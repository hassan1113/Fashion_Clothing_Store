import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class textwidget extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final String data;

  const textwidget({
    super.key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              data,
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
          ),
          TextField(
            obscureText: isPass,
            controller: textEditingController,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.black45,
                fontSize: 18,
              ),
              // border: InputBorder.none,
              fillColor: AppColors.whitecolor,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30), // Border radius
                borderSide: BorderSide(color: AppColors.whitecolor),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(30), // Border radius when focused
                borderSide: BorderSide(color: AppColors.colorgrey),
              ),

              // enabledBorder: OutlineInputBorder(
              //   borderSide: const BorderSide(width: 2, color: Colors.blue),
              //   borderRadius: BorderRadius.circular(30),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
