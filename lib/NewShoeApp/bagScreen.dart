import 'package:classwork/NewShoeApp/checkoutScreen.dart';
import 'package:flutter/material.dart';
import 'ProductModel.dart';

class BagScreen extends StatefulWidget {
  final Data? selectedItem; // Make selectedItem optional by adding a question mark

  const BagScreen({Key? key, this.selectedItem}) : super(key: key); // Make selectedItem optional

  @override
  State<BagScreen> createState() => _BagScreenState();
}

class _BagScreenState extends State<BagScreen> {
  // List of items added to the bag
  List<Data> items = [];

  @override
  void initState() {
    super.initState();
    // Add the selected item to the items list if it's not null
    if (widget.selectedItem != null) {
      items.add(widget.selectedItem!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bag'),
      ),
      body: items.isEmpty
          ? Center(
        child: Text('Your bag is empty'),
      )
          : ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            leading: widget.selectedItem != null
                ? Image.network(
              widget.selectedItem!.image!,
              width: 60,
              height: 60,
            )
                : SizedBox(), // If selectedItem is null, return an empty SizedBox
            title: Text(item.name ?? ''),
            subtitle: Text(item.extra ?? ''),
            // Add any other details you want to display
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CheckoutScreen() ));
            },
            label: const Text(
              'Checkout',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Center the FloatingActionButton horizontally
    );
  }
}
