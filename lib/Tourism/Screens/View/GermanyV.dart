import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GermanyV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.traveltriangle.com/blog/wp-content/uploads/2019/03/Places-To-Visit-In-Germany_17th-jun.jpg",
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Germany",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Germany's landscape is very diverse. If you head north, you can take a beach vacation on the Baltic or North Sea. In the country's center, you'll find many forests, lakes, rivers and nature preserves. The Alps are in the south and are perfect for hiking and skiing in the winter.",
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
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWXtqNknfDQNZ8UBTJYiBA2pNnoJWjumVDsw&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDcztFD0rzu0e1TRlmQ7kL7x6K09gJ4aGXjg&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEgp9o4dpISkb21of-gQbLlTs1BOVhxdKX2Q&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGeFivj9r1JOuqtAzER5LyZGtdoSfVp32U6Q&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNa3dkXeGx20OPN0VEVOHzSh3n0aNbHuBB9w&s'),
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
