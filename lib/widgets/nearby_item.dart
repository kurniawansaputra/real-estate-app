import 'package:flutter/material.dart';

import '../models/real_estate.dart';
import '../pages/detail_page.dart';

class NearbyItem extends StatelessWidget {
  final RealEstate realEstate;

  const NearbyItem(this.realEstate, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DetailPage(realEstate: realEstate);
            },
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(
            16.0,
          ),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(
                  realEstate.imageUrl,
                  fit: BoxFit.cover,
                  width: 80.0,
                  height: 80.0,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            realEstate.name,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '\$${realEstate.price.toStringAsFixed(0)}',
                              style: const TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Text(
                              '/mo',
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image(
                                image: const AssetImage(
                                  'assets/icons/ic_location.png',
                                ),
                                width: 14.0,
                                height: 14.0,
                                color: Colors.grey.shade600,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Flexible(
                                child: Text(
                                  realEstate.address,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                    const SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image(
                              image: const AssetImage(
                                'assets/icons/ic_bed.png',
                              ),
                              width: 14.0,
                              height: 14.0,
                              color: Colors.grey.shade600,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              realEstate.bedRoom.toStringAsFixed(0),
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Row(
                          children: [
                            Image(
                              image: const AssetImage(
                                'assets/icons/ic_bath.png',
                              ),
                              width: 14.0,
                              height: 14.0,
                              color: Colors.grey.shade600,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              realEstate.bathRoom.toStringAsFixed(0),
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Row(
                          children: [
                            Image(
                              image: const AssetImage(
                                'assets/icons/ic_type.png',
                              ),
                              width: 14.0,
                              height: 14.0,
                              color: Colors.grey.shade600,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              realEstate.category,
                              style: const TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
