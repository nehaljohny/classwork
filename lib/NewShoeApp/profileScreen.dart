import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQPyanQIalxlirVOkKxPKJs0Xe55NKy7vLW3gItxGmUwX3dylz_'),
        ),
        actions: const [
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Edit",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                color: Colors.grey,
                fontSize: 22,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Profile",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.w800),
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "View Profile",
              style: TextStyle(fontSize: 20),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30,
            ),

            onTap: () {
              // Handle View Profile tap
            },
          ),
          ListTile(
            title: const Text(
              "Orders",
              style: TextStyle(fontSize: 20),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              // Handle Orders tap
            },
          ),
          ListTile(
            title: const Text(
              "Wishlist",
              style: TextStyle(fontSize: 20),
            ),
            trailing: Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              // Handle Wishlist tap
            },
          ),
          ListTile(
            title: const Text(
              "Gift Card",
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              // Handle Gift Card tap
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Settings",
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.bold),
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              "Shipping & Returns",
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              // Handle View Profile tap
            },
          ),
          ListTile(
            title: const Text(
              "Help",
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              // Handle Orders tap
            },
          ),
          ListTile(
            title: const Text(
              "Contact Us",
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              // Handle Wishlist tap
            },
          ),
          ListTile(
            title: const Text(
              "About Us",
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              size: 30,
            ),
            onTap: () {
              // Handle Gift Card tap
            },
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity, // Set width to match the parent width
                child: FloatingActionButton.extended(
                  onPressed: () {
                    // Handle logout action
                  },
                  label: const Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black,
                    ),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
