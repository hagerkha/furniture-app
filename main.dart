import 'bottom.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'cart.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MyApp(),
    ),
  );
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing & Shoes Store',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Botton(),
    );
  }
}
