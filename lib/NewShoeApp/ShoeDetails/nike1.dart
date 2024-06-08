import 'package:flutter/material.dart';
import '../ProductModel.dart';
import '../bagScreen.dart';
import '../cartdata.dart';

class NikeDetail1 extends StatefulWidget {
  const NikeDetail1({Key? key}) : super(key: key);

  @override
  State<NikeDetail1> createState() => _NikeDetail1State();
}

class _NikeDetail1State extends State<NikeDetail1> {
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

  final Cart cart = Cart(); // Define a Cart object

  void addToBag(Data item) {
    // Add item to cart
    cart.addToCart(item);
    // Show a snackbar indicating the item is added to the bag
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Added to Bag'),
        duration: Duration(seconds: 2),
      ),
    );
    // Navigate to the BagScreen
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => BagScreen(selectedItem: item,)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              data[0].image!,
              height: 300,
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
                thickness: 2,
                color: Colors.black,
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
            SizedBox(height: 16),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton.extended(
            onPressed: () => addToBag(data[0]), // Pass the selected item
            label: Text(
              'Add to Bag',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text(
              'Buy Now',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
