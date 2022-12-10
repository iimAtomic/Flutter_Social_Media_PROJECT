// import 'dart:ui';

import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key? key}) : super(key: key);

  final List storyItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/ChillCHild.png",
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/ChillCHild.png",
    },
    {
      "pseudo": 'dramaLove',
      "photo": "assets/ChillCHild.png",
    },
    {
      "pseudo": 'moonTomato',
      "photo": "assets/ChillCHild.png",
    },
    {
      "pseudo": 'tvIt\'s',
      "photo": "assets/images/photo/photo-5.jpeg",
    },
    {
      "pseudo": 'moodPrety',
      "photo": "assets/images/photo/photo-7.jpeg",
    },
    {
      "pseudo": 'callofCallof',
      "photo": "assets/images/photo/photo-8.jpeg",
    },
    {
      "pseudo": 'flyLike',
      "photo": "assets/images/photo/photo-9.jpeg",
    },
    {
      "pseudo": 'amourOnemore',
      "photo": "assets/images/photo/photo-10.jpeg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: storyItems.map((story) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/story-circle.png',
                      height: 70,
                    ),
                    Image.asset(
                      'assets/story-circle.png',
                      height: 68,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(story['photo']),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  story['pseudo'],
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
