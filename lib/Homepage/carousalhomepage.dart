import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothingstore/images.dart';
import 'package:flutter/material.dart';
import 'package:clothingstore/colors.dart';

class Carousalhomepage extends StatefulWidget {
  const Carousalhomepage({super.key});

  @override
  State<Carousalhomepage> createState() => _CarousalhomepageState();
}

class _CarousalhomepageState extends State<Carousalhomepage> {
  final List<String> images = [
    AppImages.pic4,
    AppImages.pic6,
    AppImages.pic5,
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 190, // Adjust the height of the carousel
            autoPlay: true,
            enlargeCenterPage: false,
            autoPlayInterval: const Duration(seconds: 3),
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
            onPageChanged: (value, _){
              setState(() {
                _currentPage = value;
              });
            }
          ),
          items: images.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [AppColors.orangecolor, AppColors.yellowcolor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "New Collection",
                                style: TextStyle(
                                  color: AppColors.whitecolor,
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Discount 50% off for the first transaction",
                                style: TextStyle(
                                  color: AppColors.graycolor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                maxLines: 2,
                              ),
                              SizedBox(height: 5),
                              ElevatedButton(
                                onPressed: () {
                                  // Add your onPressed action here
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.whitecolor,
                                  shadowColor:
                                      AppColors.blackcolor.withOpacity(0.4),
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  minimumSize: Size(50, 30),
                                ),
                                child: Text(
                                  'Shop Now',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.blackcolor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Image.asset(image), // Use dynamic image here
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        buildcarouselindicator(images, _currentPage), 
      ],
    );
  }
}

buildcarouselindicator(dynamic images, int _currentPage) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      for (int i = 0; i < images.length; i++)
        Container(
          margin: EdgeInsets.all(5),
          height: i == _currentPage ? 7 :  5,
          width: i == _currentPage ? 7 :  5,
          decoration: BoxDecoration(
            color: i == _currentPage ?  AppColors.orangecolor : AppColors.colorgrey,
            shape: BoxShape.circle,
          ),
        )
    ],
  );
}
