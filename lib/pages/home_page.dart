import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.menu_rounded,
        ),
        centerTitle: true,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_rounded,
              color: Colors.deepPurple,
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(
              'Jakarta, Indonesia',
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Icon(
              Icons.arrow_drop_down_rounded,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_outlined,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Find Your\nPlace Of Dream',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(16.0),
                        color: Colors.grey.shade100,
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
                              'Search here',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.125,
                    height: 50.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.grey.shade100,
                    ),
                    child: const Icon(Icons.sort_rounded),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Center(
                child: Text(
                  'categories',
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Center(
                child: Text(
                  'featured',
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Center(
                child: Text(
                  'nearby',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
