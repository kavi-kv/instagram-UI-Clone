import 'package:flutter/material.dart';

import 'pages/account.dart';
import 'pages/home.dart';
import 'pages/reels.dart';
import 'pages/search.dart';
import 'pages/shop.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  void _navigateBottomBar(int index)
  {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> _children = [
     Home(),
    const Search(),
    const Reels(),
    const Shop(),
    const Account(),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navigateBottomBar,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label: "reels"),
        BottomNavigationBarItem(icon: Icon(Icons.shop),label: "shop"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),
      ],
      ),
      );
  }
}