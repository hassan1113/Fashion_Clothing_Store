import 'package:clothingstore/Onboardscreen/OnboardingScreen.dart';
import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';
import 'package:clothingstore/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // 5 seconds ke delay ke baad LoginScreen par navigate karain.
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.yellowcolor,
              AppColors.orangecolor
            ], // Gradient colors
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImages.fashion,
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 10), // Adding space between image and text
                  Text(
                    "Fashion",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whitecolor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
