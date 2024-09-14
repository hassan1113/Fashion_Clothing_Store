import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';

class HomeIcon extends StatelessWidget {
  final String image;

  const HomeIcon({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle button tap event
      },
      child: CircleAvatar(
        backgroundColor: AppColors.graycolor,
        radius: 25,
        child: Padding(
          padding: const EdgeInsets.all(9.0), // Add padding inside CircleAvatar
          child: Image.asset(
            image,
            fit: BoxFit.cover, // Adjust the image to fit within the padding
            width: 100, // Adjust the width to control the image size
            height: 100, // Adjust the height to control the image size
          ),
        ),
      ),
    );
  }
}
