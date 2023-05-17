import 'package:flutter/material.dart';
import 'package:travel_app/colors.dart';
import 'package:travel_app/pages/navPages/bar_item_page.dart';
import 'package:travel_app/pages/navPages/my_page.dart';
import 'package:travel_app/pages/navPages/search_page.dart';

import 'home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu,color: AppColors.mainColor),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: navIndex,
        onTap: (value) => setState(() {
          navIndex = value;
        }),
        selectedItemColor: AppColors.mainTextColor,
        unselectedItemColor: AppColors.mainTextColor.withOpacity(0.5),
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.apps),
            label: "Home",
            backgroundColor: AppColors.buttonBackground,
            tooltip: "Home",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bar_chart),
            label: "Bar",
            backgroundColor: AppColors.bigTextColor,
            tooltip: "Bar",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search),
            label: "Search",
            backgroundColor: AppColors.buttonBackground,
            tooltip: "Search",
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_3_outlined),
            label: "My",
            backgroundColor: AppColors.buttonBackground,
            tooltip: "My Page",
          ),
        ],
      ),
      body: pages[navIndex],
    );
  }
}
