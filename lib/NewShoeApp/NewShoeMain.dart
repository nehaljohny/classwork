import 'package:classwork/NewShoeApp/ShoeDetails/nike2.dart';
import 'package:classwork/NewShoeApp/ShoeDetails/nike3.dart';
import 'package:classwork/NewShoeApp/ShoeDetails/nike4.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:classwork/NewShoeApp/Shoepage1.dart';
import 'package:classwork/NewShoeApp/ShoeDetails/nike1.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => ShoePage1(),
        '/firstnike': (context) => NikeDetail1(),
        '/secondnike': (context) => NikeDetail2(),
        '/thirdnike': (context) => NikeDetail3(),
        '/fourthnike': (context) => NikeDetail4(),
        // Add other routes here if needed
      },
    );
  }
}

