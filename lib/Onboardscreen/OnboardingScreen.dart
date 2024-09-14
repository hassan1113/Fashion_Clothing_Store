import 'package:clothingstore/Onboardscreen/screen1.dart';
import 'package:clothingstore/Onboardscreen/screen2.dart';
import 'package:clothingstore/Onboardscreen/screen3.dart';
import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {}); // Trigger rebuild when the page changes
            },
            children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ],
          ),
          Positioned(
            bottom: 50,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (pageController.hasClients &&
                    pageController.page?.toInt() == 1)
                  TextButton(
                    onPressed: () {
                      pageController.animateToPage(
                        2, // Skip to the last page
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: AppColors.orangecolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                else
                  SizedBox(), // Placeholder to keep alignment

                SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: AppColors.orangecolor,
                    dotColor: AppColors.colorgrey, // Inactive dot color
                    activeDotScale: 1.2, // Slightly enlarge the active dot
                    fixedCenter: true, // Keeps the center dot fixed
                  ),
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    backgroundColor: AppColors.orangecolor, // Circle shape button
                    padding: EdgeInsets.all(15), // Background color of button
                  ),
                  onPressed: () {
                    int currentPage = pageController.page?.toInt() ?? 0;
                    if (currentPage < 2) {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      // Navigate to the homepage from the last page
                      Navigator.pushReplacementNamed(
                        context,
                        '/homepage', // Use the defined route name
                      );
                    }
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
