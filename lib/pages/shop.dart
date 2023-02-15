import 'package:flutter/material.dart';

import '../utils/shop_grid.dart';


class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             const Text('Shop',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             Row(
              children: const [
                Icon(Icons.calendar_view_month_outlined),
                SizedBox(width: 4,),
                Icon(Icons.menu),
              ],
             )
          ],
        ),
        )
      ),
      body: Column(children: [
        Padding(padding: const EdgeInsets.all(8.0),
        child: ClipRRect(borderRadius: BorderRadius.circular(4),
        child: Container(
            padding: const EdgeInsets.all(8),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Colors.grey[500],
                ),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey[700]),
                )
              ],
            ),
          ),),),
          const Expanded(child: ShopGrid())
      ]),
    );
  }
}