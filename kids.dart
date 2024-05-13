import 'package:flutter/material.dart';

class Kids extends StatelessWidget {
  @override
  List<Map> Person = [
    {
      'url': 'assets/images/kid1.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k2.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k3.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k4.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k5.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k6.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k7.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k8.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k9.jpg',
      'name': 'blouse',
    },
    {
      'url': 'assets/images/k10.jpg',
      'name': 'blouse',
    },
  ];

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          for (int i = 0; i < Person.length; i++)
            Card(
              color: Colors.purple.shade50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(
                  color: Colors.white,
                  width: 2,
                ),
              ),
              shadowColor: Colors.green,
              elevation: 40,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Person[i]['url']),
                    ),
                    SizedBox(height: 10),
                    Text(Person[i]['name']),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
