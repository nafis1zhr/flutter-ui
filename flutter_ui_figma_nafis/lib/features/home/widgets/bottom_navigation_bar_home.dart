import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List<Map<String, dynamic>> menuItems = [
    {
      "title": "Home",
      "icon": "assets/icons/home.svg",
    },
    {
      "title": "Chart",
      "icon": "assets/icons/chart.svg",
    },
    {
      "title": "Favorites",
      "icon": "assets/icons/star.svg",
    },
    {
      "title": "Account",
      "icon": "assets/icons/user.svg",
    },
  ];

  int _selectedItem = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.black87,
      elevation: 32,
      type: BottomNavigationBarType.fixed,
      items: menuItems
          .map(
            (item) => BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  item["icon"],
                ),
                label: item["title"],
                activeIcon: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(14))),
                  child: SvgPicture.asset(
                    item["icon"],
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  ),
                )),
          )
          .toList(),
      currentIndex: _selectedItem,
      selectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
}
