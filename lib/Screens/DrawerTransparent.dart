import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text("Drawer2", style: TextStyle(color: Colors.white)),
      ),
      drawer: Drawer(
        backgroundColor: Colors.transparent,
        child: ListView(
          children: [
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                        "https://static.displate.com/392x280/displate/2023-03-10/a9bdb9bff07d6bb7b799164836198625_37924de4acfea33adeee85e298775831.jpg",
                      ),
                    ),
                    SizedBox(width: 16),
                    Text(
                      'Fujiwara takumi',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Takumi_fujiwara@gmail.com",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ],
            ),
            listitems2()
          ],
        ),
      ),
    );
  }

  Column listitems2() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white12,
            ),
            padding: EdgeInsets.symmetric(vertical: 12),
            child: const Center(
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.note_alt_outlined,
            color: Colors.white,
          ),
          title: Text(
            "Add Leads",
            style: TextStyle(color: Colors.white),
          ),
        ),
        const ListTile(
          leading: Icon(
            Icons.star,
            color: Colors.white,
          ),
          title:
              Text("Points Redemption", style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          leading: Icon(
            Icons.plus_one,
            color: Colors.white,
          ),
          title: Text("Points", style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.white,
          ),
          title: Text("Profile", style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          leading: Icon(
            Icons.leaderboard,
            color: Colors.white,
          ),
          title: Text("Dashboard", style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          leading: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text("Home", style: TextStyle(color: Colors.white)),
        ),
        const Divider(),
        const Text("Communicate", style: TextStyle(color: Colors.white)),
        const ListTile(
          leading: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          title: Text("Privacy policy", style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          leading: Icon(
            Icons.phone,
            color: Colors.white,
          ),
          title: Text("Contact us", style: TextStyle(color: Colors.white)),
        ),
        const ListTile(
          leading: Icon(
            Icons.nfc,
            color: Colors.white,
          ),
          title: Text("About App", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
