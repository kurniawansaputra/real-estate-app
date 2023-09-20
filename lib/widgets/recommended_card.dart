import 'package:flutter/material.dart';
import 'package:real_estate_app/models/real_estate.dart';

class RecommendedCard extends StatelessWidget {
  final RealEstate realEstate;

  const RecommendedCard(this.realEstate, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: 330.0,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  realEstate.imageUrl,
                  fit: BoxFit.cover,
                  width: 340.0,
                  height: 160.0,
                ),
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.3),
                    ),
                    child: const Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    realEstate.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    children: [
                      Image(
                        image: const AssetImage('assets/icons/ic_location.png'),
                        width: 14.0,
                        height: 14.0,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Expanded(
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
                  const SizedBox(
                    height: 16.0,
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
                      const SizedBox(
                        width: 16.0,
                      ),
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
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
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
                        ),
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
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
                      Expanded(
                        child: Text(
                          realEstate.category,
                          style: const TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 24.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
