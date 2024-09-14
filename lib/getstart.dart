import 'package:clothingstore/colors.dart';
import 'package:clothingstore/images.dart';
import 'package:clothingstore/signin.dart';
import 'package:flutter/material.dart';

class Getstart extends StatelessWidget {
  const Getstart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 27.5),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                              100), // Circular radius of 20
                          child: Image.asset(
                            AppImages.pic1,
                            height: 400,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(100), // Circular radius of 20
                        child: Image.asset(
                          AppImages.pic2,
                          height: 220,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(100), // Circular radius of 20
                        child: Image.asset(
                          AppImages.pic3,
                          height: 165,
                          // width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'The ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Fashion App',
                    style: TextStyle(
                        color: Colors.orange), // Orange color for "fashion app"
                  ),
                  TextSpan(
                    text: ' That Makes You Look Your Best.',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 2, // You can adjust the font size here
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
                'Lorem ipsum dolor sit amet consectetur adipiscing elit',
                style: TextStyle(fontSize: 18, color: AppColors.colorgrey),
                textAlign: TextAlign.center),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => signin()),
                );
              },
              child: Text(
                'Let\'s Get Started',
                style: TextStyle(fontSize: 20, color: AppColors.whitecolor),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orangecolor,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: TextStyle(color: AppColors.colorgrey),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => signin()),
                  );
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: AppColors.orangecolor,
                      decoration: TextDecoration.underline,
                      decorationColor: AppColors.orangecolor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
