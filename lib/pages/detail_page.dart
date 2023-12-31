import 'package:flutter/material.dart';

import '../models/real_estate.dart';
import '../widgets/facility_item.dart';
import '../widgets/favorite_button.dart';
import '../widgets/model_item.dart';

class DetailPage extends StatelessWidget {
  final RealEstate realEstate;

  const DetailPage({Key? key, required this.realEstate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F8FD),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.network(
                        realEstate.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 230.0,
                      ),
                      Positioned(
                        right: 16.0,
                        top: 24.0,
                        child: FavoriteButton(realEstate),
                      ),
                      Positioned(
                        left: 8.0,
                        top: 24.0,
                        child: Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.7),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '\$${realEstate.price.toStringAsFixed(0)}',
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.deepPurple,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const Text(
                                    '/mo',
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18.0,
                                  ),
                                  const SizedBox(
                                    width: 4.0,
                                  ),
                                  Text(
                                    realEstate.rate.toStringAsFixed(1),
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            realEstate.name,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ModelItem(
                                assetImage: 'assets/icons/ic_bed.png',
                                name:
                                    '${realEstate.bedRoom.toStringAsFixed(0)} Beds',
                              ),
                              ModelItem(
                                assetImage: 'assets/icons/ic_bath.png',
                                name:
                                    '${realEstate.bathRoom.toStringAsFixed(0)} Baths',
                              ),
                              ModelItem(
                                assetImage: 'assets/icons/ic_category.png',
                                name: realEstate.category,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(realEstate.description),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Facilities',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              FacilityItem(
                                name: 'Transport',
                                iconData: Icons.bike_scooter,
                              ),
                              FacilityItem(
                                name: 'Pool',
                                iconData: Icons.pool,
                              ),
                              FacilityItem(
                                name: 'Bathtub',
                                iconData: Icons.bathtub,
                              ),
                              FacilityItem(
                                name: 'Wifi',
                                iconData: Icons.wifi,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  realEstate.address,
                                ),
                              ),
                              Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey.shade200,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.location_pin,
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Divider(),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Galeries',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        SizedBox(
                          height: 120.0,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: realEstate.imageUrls.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: EdgeInsets.only(
                                  left: index == 0 ? 16.0 : 0.0,
                                  right: 16.0,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    realEstate.imageUrls[index],
                                    fit: BoxFit.cover,
                                    width: 170.0,
                                    height: 70.0,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 100.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                        vertical: 16.0,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () {},
                          child: const Text('Book Now'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
