import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double radius;
  final double iconSize;
  final VoidCallback onPressed; // Function to handle button press

  const CustomCircleAvatar({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.borderWidth,
    required this.radius,
    required this.iconSize, // Default icon size
    required this.onPressed, // Required callback function
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,  // Handles the tap event
      borderRadius: BorderRadius.circular(radius + borderWidth), // For ripple effect
      child: Container(
        padding: EdgeInsets.all(borderWidth),  // Space for the border
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: borderWidth),  // Custom border color and width
        ),
        child: CircleAvatar(
          radius: radius,
          backgroundColor: backgroundColor,  // Custom background color
          child: Icon(
            icon,  // Custom icon
            color: iconColor,  // Custom icon color
            size: iconSize,  // Custom icon size
          ),
        ),
      ),
    );
  }
}
