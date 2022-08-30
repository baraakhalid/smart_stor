import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_stor/core/categories_screen.dart';
import 'package:smart_stor/core/favorite_screen.dart';
import 'package:smart_stor/core/home_screen.dart';
import 'package:smart_stor/drawer/setting_screen.dart';
import 'package:smart_stor/models/bn_screen.dart';
class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int _selectedPageIndex = 0;
  final List<BnScreen> _screens = <BnScreen>[
    const BnScreen( widget: HomeScreen()),
    const BnScreen( widget: HomeScreen()),
    const BnScreen( widget: CategoriesScreen()),
    const BnScreen( widget: FavoriteScreen()),
    const BnScreen( widget: SettingScreen()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: _screens[_selectedPageIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int selectedPageIndex) {
          setState(() => _selectedPageIndex = selectedPageIndex);
        },
        currentIndex: _selectedPageIndex,
        // backgroundColor: Colors.grey,
        type: BottomNavigationBarType.fixed,

        showSelectedLabels: true,
        showUnselectedLabels: false,

        selectedItemColor: Color(0xffFF7750),

        selectedIconTheme: const IconThemeData(
          color:Color(0xffFF7750),


        ),
        selectedLabelStyle: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold,
          fontSize: 12,
          color: Color(0xffFF7750),
        ),

        unselectedIconTheme: IconThemeData(
          color: Colors.grey.shade800,
        ),
        iconSize: 30,
        elevation: 20,
        items: const [
          BottomNavigationBarItem(

            activeIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          BottomNavigationBarItem(

            activeIcon: Icon(Icons.search),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(

            activeIcon: Icon(Icons.category),
            icon: Icon(Icons.category_outlined),
            label: 'Categories',
          ),
          BottomNavigationBarItem(

            activeIcon: Icon(Icons.favorite_outlined),
            icon: Icon(Icons.favorite_border),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(

            activeIcon: Icon(Icons.settings),
            icon: Icon(Icons.settings_outlined),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
