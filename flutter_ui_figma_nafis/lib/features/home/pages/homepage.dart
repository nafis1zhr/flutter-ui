
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_figma_nafis/features/home/widgets/bottom_navigation_bar_home.dart';
import 'package:flutter_ui_figma_nafis/features/home/widgets/category_home.dart';
import 'package:flutter_ui_figma_nafis/features/home/widgets/recommended_furniture_home.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/threeline.svg"),
        ),
        title: Center(
          child: Text(
            "Home",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: Color(0xff4A4543))),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg"),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF2F2F2),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 226,
              child: Text(
                "Discover the most modern furniture",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 22,
                        color: Color(0xFF4A4543))),
              ),
            ),
            const SizedBox(height: 25),
            SizedBox(
              height: 40,
              child: CategoryHome(),
            ),
            const SizedBox(height: 25),
            Text(
              "Recommended Furnitures",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF4A4543),
              )),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: RecommendedFurnituresHome(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
