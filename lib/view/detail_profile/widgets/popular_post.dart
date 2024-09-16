import 'package:flutter/material.dart';

class PopularPost extends StatelessWidget {
  final String image;
  const PopularPost({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 248,
      height: 143,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/images/$image"),
      ),
    );
  }
}
