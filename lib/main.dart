import 'package:classwork/NewShoeApp/Shoepage1.dart';
import 'package:flutter/material.dart';
import 'ShoesEcommerce/Screens/Views/ShoeHome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: ShoePage1(),
    );
  }
}
