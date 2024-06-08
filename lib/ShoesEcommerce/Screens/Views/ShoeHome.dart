import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Model/ShoeHomeModel.dart';
import '../Widgets/shoeview.dart';

class ShoeHome extends StatelessWidget {
  const ShoeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Explore",
          style: GoogleFonts.robotoCondensed(
              fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarouselSlider(
              items: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://res.cloudinary.com/admitad-gmbh/image/upload/v1644577720/wksfuf7m9p7q4yffefhy.jpg"))),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://i.ytimg.com/vi/fr4DnQvtq9Q/maxresdefault.jpg"))),
                ),
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT20WuTSHyizd8eIEF0xElZ1mt8dQ2hOfpnkg&s"))),
                )
              ],
              options: CarouselOptions(
                  autoPlay: true,
                  // height: 160,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  autoPlayCurve: Curves.linear)),
          Text(
            "Branded Shoes",
            style: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: shoelistt.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ShoeView(
                        imagepath: shoelistt[index].image,
                        title: shoelistt[index].name,
                        cat: shoelistt[index].category,
                        price: shoelistt[index].price,
                      ),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}