import 'package:flutter/material.dart';

class ModelItem extends StatelessWidget {
  final String assetImage;
  final String name;

  const ModelItem({
    super.key,
    required this.name,
    required this.assetImage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image(
          image: AssetImage(
            assetImage,
          ),
          width: 14.0,
          height: 14.0,
          color: Colors.grey.shade600,
        ),
        const SizedBox(
          width: 4.0,
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 12.0,
            color: Colors.grey,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
      ],
    );
  }
}
