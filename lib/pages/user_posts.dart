import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  // const UserPosts({super.key});

  final String name;

  const UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //?*: Porfile
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          height: 350,
          color: Colors.grey[300],
        ),
        const SizedBox(
          height: 5,
        ),
        //?: below the post -> buttons and comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              const Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                "Hudan Sirad",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(" and "),
              Text('Liked by '),
              Text(
                "Others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //?: ->  Captions
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
              text:  TextSpan(
                  style: const TextStyle(color: Colors.black),
                  children: [
                TextSpan(
                    text: name,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const TextSpan(text: " Wow! that is very aggresive, and so on and on and on."),
              ])),
        )
        //?: -> comments
      ],
    );
  }
}
