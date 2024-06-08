import 'package:classwork/ShoesEcommerce/Screens/Views/ShoeHome.dart';
import 'package:flutter/material.dart';
import '../NewShoeApp/Shoepage1.dart';
import 'Screens/Views/shoedetails.dart';

void main() async {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoePage1(),
      //theme: ThemeData.dark(),
      routes: {
        'shoeDetails': (context) => ShoeDetails(),
        'homepage'   : (context) => ShoePage1()
      },
    );
  }
}

/// main() - To run a program, main function is mandatory
/// runApp() - Attach widget tree to the screen (widget to pixel)
/// build - to create widget tree
///buildContext - used to locate each widget and it's position in a widget tree
