import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ItalyV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://www.planetware.com/photos-large/I/italy-colosseum-day.jpg",
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Italy",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Arguably one of the most popular tourist hotspots in the world, Italy offers a myriad of experiences for travelers of all kinds. You can indulge your inner foodie with decadent Italian cuisine, immerse yourself in the fashion capital of the world, drive through picturesque…",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Places to Visit",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Add your images as scrollable rows here
                  Image.network(
                      'https://www.planetware.com/photos-large/I/italy-colosseum-day.jpg'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRV1wvZHFc8zGkNCv3a8jApcitokm_E0KUDsw&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxUPZENbNi7inLqjQUq1OlCoM_u7lb-WPvhA&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8zimDL4_wSCj5hoRlsyoRAjF4uH5geXKqQw&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1fDhI8VWJBRvKiCoJDgYTb8nmkHY6KTTZfg&s'),
                ],
              ),
            ),
            SizedBox(height: 140,),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 400,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('#3e014d'),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(11),
                      ),
                    ),
                    child: const Text(
                      "Press to Explore",
                      style: TextStyle(
                        color: Colors.white, // Set the text color
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
