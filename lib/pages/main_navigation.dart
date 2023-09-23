import 'package:flutter/material.dart';

import 'home_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  static const List _pages = [
    HomePage(),
  ];

  void _onItemTapped(int index) {
    if (index == 0) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          bottomNavBarItem('Home', 'assets/icons/ic_home.png'),
          bottomNavBarItem('Favorite', 'assets/icons/ic_favorite.png'),
          bottomNavBarItem('Chat', 'assets/icons/ic_chat.png'),
          bottomNavBarItem('Profile', 'assets/icons/ic_profile.png'),
        ],
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.deepPurple,
        onTap: _onItemTapped,
      ),
      body: _pages[_selectedIndex],
    );
  }

  BottomNavigationBarItem bottomNavBarItem(String label, String iconAsset) {
    return BottomNavigationBarItem(
      icon: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(iconAsset),
          ),
        ),
      ),
      label: label,
    );
  }
}
