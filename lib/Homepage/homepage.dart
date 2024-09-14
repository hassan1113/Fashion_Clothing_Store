import 'package:clothingstore/Homepage/Homeicon.dart';
import 'package:clothingstore/Homepage/MyCart.dart';
import 'package:clothingstore/Homepage/carousalhomepage.dart';
import 'package:clothingstore/Homepage/cart_model.dart';
import 'package:clothingstore/Homepage/multiplesection.dart';
import 'package:clothingstore/images.dart';
import 'package:flutter/material.dart';
import 'package:clothingstore/colors.dart';
import 'package:clothingstore/searchwidget.dart';
import 'package:provider/provider.dart';

class HomePagee extends StatelessWidget {
  const HomePagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 0,
                blurRadius: 3,
                offset: Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          child: AppBar(
            centerTitle: true,
            title: Row(
              children: [
                Image.asset(
                  AppImages.fashion,
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Fashion',
                  style: TextStyle(color: AppColors.blackcolor),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Store',
                  style: TextStyle(color: AppColors.orangecolor),
                )
              ],
            ),
            backgroundColor: AppColors.whitecolor,
            elevation: 0, // Remove default shadow
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Stack(
                  children: [
                    IconButton(
                      icon: CircleAvatar(
                        backgroundColor: AppColors.orangecolor,
                        child: Icon(Icons.shopping_bag, color: AppColors.whitecolor),
                      ),
                      onPressed: () {
                        // Navigate to the Cart Page
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyCartPage()),
                        );
                      },
                    ),
                    Positioned(
                      right: 6,
                      top: 3,
                      child: Consumer<CartModel>(
                        builder: (context, cartModel, child) {
                          int itemCount = cartModel.products
                              .fold(0, (sum, product) => sum + product.quantity);
                          return itemCount > 0
                              ? Container(
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: AppColors.redcolor,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    '$itemCount',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                              : Container(); // Show nothing if cart is empty
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            // Search bar and filter icon row
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(
                    child: SearchWidget(hintText: 'Search'),
                  ),
                  SizedBox(width: 8),
                  InkWell(
                    onTap: () {
                      // Add your onTap action here
                    },
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppColors.orangecolor,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.tune, color: AppColors.whitecolor),
                    ),
                  ),
                ],
              ),
            ),
            // Carousel
            Carousalhomepage(),
            // Categories section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(fontSize: 18, color: AppColors.orangecolor),
                  ),
                ],
              ),
            ),
            // Icon row
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomeIcon(image: AppImages.shirt),
                  HomeIcon(image: AppImages.pant),
                  HomeIcon(image: AppImages.dress),
                  HomeIcon(image: AppImages.jacket),
                ],
              ),
            ),
            HomeScreen(),
            // MainScreen(),
          ],
        ),
      ),
    );
  }
}
