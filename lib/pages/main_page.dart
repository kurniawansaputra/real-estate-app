import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/ic_home.png'),
                ),
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/ic_favorite.png'),
                ),
              ),
            ),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/ic_chat.png'),
                ),
              ),
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: 20,
              height: 20,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icons/ic_profile.png'),
                ),
              ),
            ),
            label: 'Profile',
          ),
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
}
