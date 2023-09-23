import 'package:flutter/material.dart';
import 'package:real_estate_app/pages/main_navigation.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/apartment.png',
              width: 180.0,
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
          ],
        ),
      ),
    );
  }
}
