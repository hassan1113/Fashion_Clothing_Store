import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        title: Text('Privacy Policy', style: TextStyle(color: AppColors.whitecolor)),
        centerTitle: true,
        backgroundColor: AppColors.orangecolor,
        elevation: 0,
        leading: IconButton(
          icon: CircleAvatar(
            backgroundColor: AppColors.whitecolor,
            child: Icon(Icons.arrow_back, color: AppColors.orangecolor),
          ),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Cancellation Policy',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: AppColors.orangecolor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ...'
            ),
            SizedBox(height: 20),
            Text(
              'Terms & Condition',
              style: TextStyle(
                fontSize: 18, 
                fontWeight: FontWeight.bold, 
                color: AppColors.orangecolor,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit...'
            ),
            // Add more sections if needed
          ],
        ),
      ),
    );
  }
}
