import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedFurnituresHome extends StatelessWidget {
  RecommendedFurnituresHome({super.key});

  final List<Map<String, dynamic>> _furnitures = [
    {
      'name': 'Stylish Chair',
      'price': 170,
      'star': 4.8,
      'image': 'assets/images/Stylish_Chair.png',
    },
    {
      'name': 'Modern Table',
      'price': 75,
      'star': 4.9,
      'image': 'assets/images/Modern_Table.png',
    },
    {
      'name': 'Wooden Console',
      'price': 240,
      'star': 4.7,
      'image': 'assets/images/Wooden_Console.png',
    },
    {
      'name': 'Brown Armchair',
      'price': 210,
      'star': 4.9,
      'image': 'assets/images/Brown_Armchair.png',
    },
    {
      'name': 'Stylish Chair',
      'price': 170,
      'star': 4.8,
      'image': 'assets/images/Stylish_Chair.png',
    },
    {
      'name': 'Modern Table',
      'price': 75,
      'star': 4.9,
      'image': 'assets/images/Modern_Table.png',
    },
    {
      'name': 'Wooden Console',
      'price': 240,
      'star': 4.7,
      'image': 'assets/images/Wooden_Console.png',
    },
    {
      'name': 'Brown Armchair',
      'price': 210,
      'star': 4.9,
      'image': 'assets/images/Brown_Armchair.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: _furnitures.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                          image: DecorationImage(
                              image: AssetImage(_furnitures[index]['image']),
                              fit: BoxFit.cover)),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child:
                            SvgPicture.asset('assets/icons/fav.svg', width: 15),
                      ),
                    ),
                  ],
                )),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _furnitures[index]['name'],
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Color(0xFF4A4543))),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                '\$${_furnitures[index]['price']}',
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Color(0xFF9A9390),
                                  ),
                                ),
                              ),
                            ),
                            const Icon(Icons.star,
                                size: 15, color: Color(0xFFEEA427)),
                            const SizedBox(width: 8),
                            Text(
                              '${_furnitures[index]['star']}',
                              style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFBBBBBB),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ]),
                )
              ],
            ),
          );
        });
  }
}
