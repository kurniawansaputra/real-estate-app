import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final IconData iconData;

  const FacilityItem({
    Key? key,
    required this.name,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50.0,
          height: 50.0,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(
              16.0,
            ),
            color: Colors.deepPurple.shade50,
          ),
          child: Icon(
            iconData,
            color: Colors.deepPurple,
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        Text(name)
      ],
    );
  }
}
