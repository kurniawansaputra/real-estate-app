import 'package:flutter/material.dart';
import 'package:real_estate_app/models/real_estate.dart';
import 'package:real_estate_app/widgets/category_card.dart';
import 'package:real_estate_app/widgets/nearby_card.dart';
import 'package:real_estate_app/widgets/recommended_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FD),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple.shade800,
                      Colors.deepPurple.shade400,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.white,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'New York, US',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                                Icon(
                                  Icons.arrow_drop_down_rounded,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.2),
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.white,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              'apartment, cottage',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: categoryItem(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recomended',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SizedBox(
                height: 275.0,
                child: ListView.builder(
                  itemCount: recommendedList.length,
                  itemBuilder: (context, index) {
                    final RealEstate realEstate = recommendedList[index];
                    return Container(
                      margin: EdgeInsets.only(
                        left: index == 0 ? 16 : 0.0,
                        right: 16.0,
                      ),
                      child: RecommendedCard(realEstate),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby Your Location',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'More',
                      style: TextStyle(
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              ListView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                itemCount: nearbyList.length,
                itemBuilder: (context, index) {
                  final RealEstate realEstate = nearbyList[index];
                  return NearbyCard(realEstate);
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  categoryItem() {
    return const Wrap(
      runSpacing: 8.0,
      spacing: 8.0,
      children: [
        CategoryCard(name: 'House'),
        CategoryCard(name: 'Apartment'),
        CategoryCard(name: 'Townhouse'),
        CategoryCard(name: 'Cottage'),
        CategoryCard(name: 'Mansion'),
        CategoryCard(name: 'Condo'),
      ],
    );
  }
}
