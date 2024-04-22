import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomSheeets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Flutter Bottom Sheets")),
        ),
        body: Column(
          children: [
            GestureDetector(
              onLongPress: () => show(context),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 100, vertical: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: const Center(
                  child: Text(
                    'Select the category',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onLongPress: () => show(context),
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 150, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.blue,
                ),
                padding: EdgeInsets.symmetric(vertical: 12),
                child: const Center(
                  child: Text(
                    'Help',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }

  show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return GridView.count(
          crossAxisCount: 3,
          children: const [
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder,
                    size: 80,
                    color: Colors.lightBlueAccent,
                  ),
                  Text(
                    "Shopping",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder,
                    size: 80,
                    color: Colors.purpleAccent,
                  ),
                  Text(
                    "Education",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder,
                    size: 80,
                    color: Colors.blue,
                  ),
                  Text(
                    "Personal",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder,
                    size: 80,
                    color: Colors.redAccent,
                  ),
                  Text(
                    "Office",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder,
                    size: 80,
                    color: Colors.orangeAccent,
                  ),
                  Text(
                    "Part time",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder,
                    size: 80,
                    color: Colors.black54,
                  ),
                  Text(
                    "Other",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.create_new_folder_rounded,
                    size: 80,
                    color: Colors.deepOrangeAccent,
                  ),
                  Text(
                    "New",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
