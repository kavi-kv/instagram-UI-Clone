import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  final String text;

  const BubbleStories({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 65,
              width: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[400],
              ),
              ),
              const SizedBox(height: 5,),
              Text(text)
        ],
      ),
    );
  }
}
