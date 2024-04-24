import 'package:classwork/Tourism/Screens/View/FranceV.dart';
import 'package:classwork/Tourism/Screens/View/IndiaV.dart';
import 'package:classwork/Tourism/Screens/View/ItalyV.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'View/GermanyV.dart';

class TourismP1 extends StatelessWidget {
  const TourismP1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('#3e014d'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Popular ",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GermanyV()),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        child: Image.network(
                          "https://img.traveltriangle.com/blog/wp-content/uploads/2019/03/Places-To-Visit-In-Germany_17th-jun.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        left: 16,
                        bottom: 16,
                        child: Text(
                          "Germany",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FranceV()),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        child: Image.network(
                          "https://entiretravel.imgix.net/getmedia/6046a3d8-dd57-47f3-84a1-ac0e7c864320/alsace-blog.png?auto=format",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        left: 16,
                        bottom: 16,
                        child: Text(
                          "France",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ItalyV()),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        child: Image.network(
                          "https://www.planetware.com/photos-large/I/italy-colosseum-day.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        left: 16,
                        bottom: 16,
                        child: Text(
                          "Italy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IndiaV()),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        child: Image.network(
                          "https://img.traveltriangle.com/blog/wp-content/uploads/2023/06/PTV-India-OG-Final.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Positioned(
                        left: 16,
                        bottom: 16,
                        child: Text(
                          "India",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
