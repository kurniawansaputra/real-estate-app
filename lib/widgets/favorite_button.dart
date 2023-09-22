import 'package:flutter/material.dart';

import '../models/real_estate.dart';

class FavoriteButton extends StatefulWidget {
  final RealEstate realEstate;

  const FavoriteButton(this.realEstate, {super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();

    isFavorite = widget.realEstate.isFavorite;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.7),
      ),
      child: IconButton(
        onPressed: () {
          setState(
            () {
              isFavorite = !isFavorite;
              widget.realEstate.isFavorite = isFavorite;
            },
          );
        },
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
      ),
    );
  }
}
