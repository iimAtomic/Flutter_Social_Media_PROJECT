import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  PostWidget({Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo": 'painStop',
      "photo": "assets/photo/photo-1.jpeg",
      "photoProfil": "assets/images/I2.jpeg",
      "description": "🤩😱 Loock amazing, what do you like to see ?"
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-2.jpeg",
      "photoProfil": "assets/images/profil/photo-2.jpeg",
      "description": "😎🤠🛫 New travel!!! New York & Chicago, We re coming!"
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/photo-3.jpeg",
      "photoProfil": "assets/images/profil/photo-3.jpeg",
      "description": "He slid back into his former position"
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-4.jpeg",
      "photoProfil": "assets/images/profil/photo-4.webp",
      "description": "🥵 Getting up early all the time"
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/photo-5.jpeg",
      "photoProfil": "assets/images/profil/photo-5.jpeg",
      "description": "🥶 You've got to get enough sleep. "
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-6.jpeg",
      "photoProfil": "assets/images/profil/photo-6.webp",
      "description": "Other travelling salesmen live a life of luxury"
    },
    {
      "pseudo": 'painStop',
      "photo": "assets/images/photo/photo-7.jpeg",
      "photoProfil": "assets/images/profil/photo-1.webp",
      "description": "🤟 For instance, whenever I go back to the guest"
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-8.jpeg",
      "photoProfil": "assets/images/profil/photo-2.jpeg",
      "description":
      "Doing business like this takes much more effort than doing your own business at home"
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-9.jpeg",
      "photoProfil": "assets/images/profil/photo-3.jpeg",
      "description": "🤪 and on top of that there's the curse of travelling"
    },
    {
      "pseudo": 'sonTomato',
      "photo": "assets/images/photo/photo-10.jpeg",
      "photoProfil": "assets/images/profil/photo-4.webp",
      "description":
      "😭😩 bad and irregular food, contact with different people"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: postItems.map((post) {
        return Column(
          children: [
            Container(
                height: 50,
                // color: Colors.grey,
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(post['photoProfil']),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      post['pseudo'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz),
                    )
                  ],
                )),
            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post['photo']),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_outline),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.message_outlined),
                ),
                Expanded(child: Container()),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.bookmark_outline),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photoProfil']),
                  ),
                  const SizedBox(width: 10),
                  RichText(
                    text: TextSpan(
                      text: 'Aimé par ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: post['pseudo'],
                          style: const TextStyle(fontWeight: FontWeight.w600),
                        ),
                        const TextSpan(text: ' et '),
                        const TextSpan(
                          text: '123 autres personnes',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        post['pseudo'],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          post['description'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        'Voir plus',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade400),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Voir les commentaires',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        '16 min ago • ',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade400),
                      ),
                      const Text(
                        'Translate',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      }).toList(),
    );
  }
}
