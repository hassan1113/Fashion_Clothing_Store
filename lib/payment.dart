import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';

class PaymentMethodsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        title: Text('Payment Methods', style: TextStyle(color: AppColors.whitecolor)),
        centerTitle: true,
        backgroundColor: AppColors.orangecolor,
        elevation: 0,
        leading: IconButton(
          icon: CircleAvatar(
            backgroundColor: AppColors.whitecolor,
            child: Icon(Icons.arrow_back, color: AppColors.orangecolor),
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Credit & Debit Card',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: AppColors.orangecolor,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.orangecolor),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  labelText: 'Card Number',
                  prefixIcon: Icon(Icons.credit_card, color: AppColors.orangecolor),
                  suffixIcon: TextButton(
                    child: Text(
                      'Link',
                      style: TextStyle(color: AppColors.orangecolor),
                    ),
                    onPressed: () {
                      // Link new card
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'More Payment Options',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: AppColors.orangecolor,
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.orangecolor),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  labelText: 'PayPal Email',
                  prefixIcon: Icon(Icons.paypal, color: AppColors.orangecolor),
                  suffixIcon: TextButton(
                    child: Text(
                      'Link',
                      style: TextStyle(color: AppColors.orangecolor),
                    ),
                    onPressed: () {
                      // Link PayPal
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColors.whitecolor,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: AppColors.orangecolor),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                  border: InputBorder.none,
                  labelText: 'Apple Pay Email',
                  prefixIcon: Icon(Icons.apple, color: AppColors.orangecolor),
                  suffixIcon: TextButton(
                    child: Text(
                      'Link',
                      style: TextStyle(color: AppColors.orangecolor),
                    ),
                    onPressed: () {
                      // Link Apple Pay
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
