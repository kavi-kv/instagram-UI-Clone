import 'package:flutter/material.dart';

import '../utils/utils.dart';
import 'user_posts.dart';

class Home extends StatelessWidget {
  final List<String> people = [
    'Nafisa Arre',
    'Mohamed Seko',
    'Anne Bold',
    'Dahir Gentleman',
    'Mumin Gege',
    'Alle Mame'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Instagram",
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //? -> Stories
          Container(
              height: 130,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: people.length,
                  itemBuilder: (context, index) {
                    return BubbleStories(text: people[index]);
                  })),
          //?-> Posts
          Expanded
          (
            child: ListView.builder(itemCount: people.length ,itemBuilder: (context,index) {
              return UserPosts(name: people[index],);
            }),
          )
        ],
      ),
    );
  }
}
