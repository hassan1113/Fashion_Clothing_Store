import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(
          "assets/animations/3.json",
          fit: BoxFit.contain,
          // reverse: true,
          animate: true,
          repeat: true,
          height: 300,
          // width: 300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Swift",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.orangecolor),
            ),
            Text(
              " and",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              " Reliable",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColors.orangecolor),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Deliverey",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur sapien",
            style: TextStyle(fontSize: 18, color: AppColors.colorgrey),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
