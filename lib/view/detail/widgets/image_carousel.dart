import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  final String image;
  const ImageCarousel({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.cover,
    );
  }
}
