import 'package:classwork/NewShoeApp/bagScreen.dart';
import 'package:classwork/NewShoeApp/profileScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'ProductModel.dart';
import 'FavoriteScreen.dart';

class ShoePage1 extends StatelessWidget {
  final List<Data> data = [
    Data(
      image:
      'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/8cc40f5a-3693-4976-9ce0-70ec9687889b/air-max-90-shoes-K0mczj.png',
      name: 'Nike Air Max 90',
      stringdata: "Women's Shoes - Popular",
      extra: '\$150',
    ),
    Data(
      image:
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNcKhusAVaXvsAcZqQlNhC16nQfVsbql0JpQkvusLLaA&s',
      name: "Nike AF1 Shadow",
      stringdata: "Women's Shoes - just in",
      extra: '\$130',
    ),
    Data(
      image:
      "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7b178bc5-a36a-4064-b2db-e9b5149beb74/nikecourt-legacy-shoes-PKg8wX.png",
      name: "Nike Court Legacy",
      stringdata: "Men and Women Shoes",
      extra: '\$150',
    ),
    Data(
      image:
      'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e2e3972e-86fb-4f53-a3e9-0b900117deab/nikecourt-legacy-older-shoes-Lgjj2P.png',
      name: "Nike Court Legacy Next",
      stringdata: "Men and Women Shoes",
      extra: '\$100',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'All Shoes ',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.bold),
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search, size: 40,),
              onPressed: () {

              },
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Lifestyle'),
              Tab(text: 'Jordan'),
              Tab(text: 'Running'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            buildGrid(data), // Display grid for tab 'All'
            buildGrid(data), // Placeholder for tab 'lifestyle'
            buildGrid(data), // Placeholder for tab 'jordan'
            buildGrid(data), // Placeholder for tab 'running'
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.home_outlined, color: Colors.black),
                onPressed: () {

                },
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.search, color: Colors.black),
                onPressed: () {

                },
              ),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.favorite_border_outlined, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoriteScreen()),
                  );
                },
              ),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BagScreen()),
                  );
                },
              ),
              label: 'Bag',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.person_outline_outlined, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
              label: 'Profile',
            ),
          ],
          showSelectedLabels: true, // Show selected label names
          showUnselectedLabels: true, // Show unselected label names
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
        ),

      ),
    );
  }

  Widget buildGrid(List<Data> data) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .6,
      ),
      itemCount: data.length,
      itemBuilder: (context, index) => Card(
        child: InkWell(
          onTap: () {
            // Navigate to different screens based on index using Get
            switch (index) {
              case 0:
                Get.toNamed('/firstnike');
                break;
              case 1:
                Get.toNamed('/secondnike');
                break;
              case 2:
                Get.toNamed('/thirdnike');
                break;
              case 3:
                Get.toNamed('/fourthnike');
                break;
              default:
                break;
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    data[index].image!,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index].name!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      data[index].stringdata!,
                      style: const TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          data[index].extra!,
                          style: const TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}