import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FranceV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://entiretravel.imgix.net/getmedia/6046a3d8-dd57-47f3-84a1-ac0e7c864320/alsace-blog.png?auto=format",
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "France",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "France has 45 sites inscribed in the UNESCO's World Heritage List and features cities or sites of high cultural interest (Paris being the foremost, but also Loire Valley, Toulouse, Strasbourg, Bordeaux, Lyon and others), beaches and seaside resorts, ski resorts, as well as rural regions that many enjoy for their beauty ...",
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
                      'https://entiretravel.imgix.net/getmedia/6046a3d8-dd57-47f3-84a1-ac0e7c864320/alsace-blog.png?auto=format'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQvSBC0_vBsbTiQnIiLOsLAZQOVsKClXCZhA&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNOj4N49fnvUG-0GN9fXJUDe7N56e13YMvRQ&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYKe4Un_rOiLZ86zSKvAaEYwp63EncJV42YQ&s'),
                  Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQthqVPw5COsXoLU4XEYT-kTPOY10S3x4XtuQ&s'),
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
