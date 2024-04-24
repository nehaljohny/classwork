import 'package:classwork/Screens/BottomSheets.dart';
import 'package:classwork/Screens/DrawerTransparent.dart';
import 'package:classwork/ShoesEcommerce/Screens/Views/ShoeHome.dart';
import 'package:classwork/ShoesEcommerce/Screens/Views/Shoepage1.dart';
import 'package:classwork/Tourism/Screens/View/FranceV.dart';
import 'package:classwork/Tourism/Screens/View/GermanyV.dart';
import 'package:flutter/material.dart';
import 'Tourism/Screens/TourismP1.dart';
import 'Tourism/Screens/View/IndiaV.dart';
import 'Tourism/Screens/View/ItalyV.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: TourismP1(),
    );

  }
}
