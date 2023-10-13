import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tugas_akhir/pages/FavoritePage/favoritepage.dart';
import 'package:tugas_akhir/pages/profile.dart';
import '../pages/homePage/homePage.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    const FavoritePage(),
    const profilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: Container(
          color: Color.fromARGB(255, 27, 12, 0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GNav(
              backgroundColor: Color.fromARGB(255, 27, 12, 0),
              color: Colors.white,
              activeColor: Colors.black,
              tabBackgroundColor: Colors.white,
              gap: 8,
              padding: EdgeInsets.all(10),
              tabMargin: EdgeInsets.all(5),
              tabs: const [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.favorite, text: 'Favorite'),
                GButton(icon: Icons.person, text: 'Profile'),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ));
  }
}
