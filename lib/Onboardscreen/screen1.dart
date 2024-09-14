import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(
          "assets/animations/1.json",
          fit: BoxFit.contain,
          reverse: true,
          animate: true,
          repeat: true,
          height: 300,
          // width: 300,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Seamless", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color: AppColors.orangecolor),),
            Text(" Shopping", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ],
        ),
        Text("Experience", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur sapien", style: TextStyle(fontSize: 18, color: AppColors.colorgrey),
          textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
