import 'package:flutter/material.dart';

import '../ProductModel.dart';

class NikeDetail4 extends StatefulWidget {
  const NikeDetail4({super.key});

  @override
  State<NikeDetail4> createState() => _NikeDetail4State();
}

class _NikeDetail4State extends State<NikeDetail4> {
  late final List<Data> data = [
    Data(
      image:
      'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/e2e3972e-86fb-4f53-a3e9-0b900117deab/nikecourt-legacy-older-shoes-Lgjj2P.png',
      name: "Nike Court Legacy Next",
      stringdata: "Men and Women Shoes",
      extra: '\$100',
    ),
  ];

  int selectedColorIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              height: 300,
              data[0].image!, // Using the first item's image URL as an example
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                data[0].name!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${data[0].extra}',
                // Using the first item's price as an example
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5, // Number of sizes
                  itemBuilder: (context, index) {
                    int size = index + 5; // Starting size
                    return GestureDetector(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                          ),
                        ),
                        child: Text(
                          size.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                thickness: 2, // Thickness of the spacer
                color: Colors.black, // Color of the spacer
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Details',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            // Add shoe details here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Details of the shoe...',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                thickness: 2, // Thickness of the spacer
                color: Colors.black, // Color of the spacer
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Size and Fit',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            // Add size and fit details here
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Size and fit details...',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                thickness: 2, // Thickness of the spacer
                color: Colors.black, // Color of the spacer
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Composition & Care',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16), // Add a gap
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Add to Bag',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),),
            backgroundColor: Colors.white,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Buy Now',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),),
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );

  }
}
