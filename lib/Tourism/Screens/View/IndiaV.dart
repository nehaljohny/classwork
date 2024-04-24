import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class IndiaV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.traveltriangle.com/blog/wp-content/uploads/2023/06/PTV-India-OG-Final.png",
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "India",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "India is a large market for travel and tourism. It offers a diverse portfolio of niche tourism products - cruises, adventure, medical, wellness, sports, MICE, eco-tourism, film, rural and religious tourism. India has been recognized as a destination for spiritual tourism for domestic and international tourists.",
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
                      'https://img.traveltriangle.com/blog/wp-content/uploads/2023/06/PTV-India-OG-Final.png'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFbOBLz1YW33GydwiV8HNlb32T_BrL4yfYEg&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0-RkFYLMk-wRJGFdXUkQKK96BX9rPqeCmPw&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWE82dxvbC7lbXsVGOsbwWx2VJVHCP8-HA_A&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQisdQxEB1Ie_o0-EAKkUDn9JkjEKoGcskDpA&s'),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: HexColor('#3e014d'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
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
