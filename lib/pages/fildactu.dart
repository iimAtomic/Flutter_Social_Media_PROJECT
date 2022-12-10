import 'package:flutter/material.dart';
import '../widgets/widgets.dart';
import 'chat_page.dart';
import 'home_page.dart';
import 'story_widget.dart';
import 'post_widget.dart';



class Acceuil extends StatelessWidget {
  const Acceuil({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ChillChild',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFF1956B4),
          elevation: 0,
          title: Image.asset(
            'assets/ChillChild2.png',
            height: 60,
          ),
          actions: [
            IconButton(
              onPressed: () {nextScreen(context, const HomePage());},
              icon: const Icon(
                Icons.message,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(),
              PostWidget(),
            ],
          ),
        ),


        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xFF1956B4),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'recherche',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt_outlined),
              label: 'Camera',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.paste_outlined),
              label: 'notifications',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profil',
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
