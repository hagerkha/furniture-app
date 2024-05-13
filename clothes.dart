import 'package:flutter/material.dart';
import 'kids.dart';
import 'men.dart';
import 'shoes.dart';
import 'woman.dart';

class Clothes extends StatelessWidget {
  @override

  Widget build(BuildContext context)
  {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Clothes & Shoes'),
            backgroundColor: Colors.purple,
            bottom: TabBar(
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Woman',
                  icon: Icon(Icons.pregnant_woman),
                ),
                Tab(
                  text: 'Men',
                  icon: Icon(Icons.person),
                ),
                Tab(
                  text: 'Kids',
                  icon: Icon(Icons.baby_changing_station),
                ),
                Tab(
                  text: 'Shoes',
                  icon: Icon(Icons.luggage),
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Woman(),
              Men(),
              Kids(),
              Shoes(),
            ],
          ),
        ));
  }
}
