import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final String hintText;

  const SearchWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: Container(
        width: double.infinity, // Ensure the Row gets a finite width
        child: Row(
          children: [
            // Search TextField
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: hintText,
                  prefixIcon: Icon(Icons.search, color: AppColors.orangecolor),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: AppColors.orangecolor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: AppColors.orangecolor),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
