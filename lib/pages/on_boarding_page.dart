import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/main_navigation.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 24.0,
                ),
                Image.asset(
                  'assets/images/apartment.png',
                  width: 140.0,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  'Find Your\nDream Home',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                const Text(
                  'Settle in somewhere new.\nDiscover stays to live.',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 24.0,
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return const MainNavigation();
                    }));
                  },
                  child: const Text('Explore'),
                ),
                const SizedBox(
                  height: 24.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
