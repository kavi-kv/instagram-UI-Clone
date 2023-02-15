import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/utils/utils.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 54.0, left: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //? ->  Profile picture
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
    
                  //?: -> Number of posts, followers and following
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '540',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Posts'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '24,000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '2000',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 24),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Mohamed Firdouz',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      'Cross Platform   App Developer'
                    ),
                  ),
                  Text(
                    'm.twitter.com/KAVI ALI/',style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children:  [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Center(child: Text('Edit Profile'),),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Center(child: Text('Add Tools'),),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: const Center(child: Text('Insights'),),
                      ),
                    ),
                  )
                ],
              ),
            ),
            //?: -> Stories
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: const [
                  BubbleStories(text: 'Story 1'),
                  BubbleStories(text: 'Story 1'),
                  BubbleStories(text: 'Story 1'),
                ],
              ),
            ),
            const TabBar(tabs: [
              Tab(
              icon: Icon(Icons.grid_3x3_outlined),
            ),
              Tab(
              icon: Icon(Icons.video_call),
            ),
              Tab(
              icon: Icon(Icons.shop),
            ),
              Tab(
              icon: Icon(Icons.person),
            ),
            ])
          ],
        ),
      ),
    );
  }
}
