import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        title: Text('Settings', style: TextStyle(color: AppColors.whitecolor)),
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
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications,
                color: AppColors.orangecolor), // Icon for Notifications
            title: Text('Notification Settings'),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: AppColors.orangecolor,
            ),
            onTap: () {
              // Navigate to Notification Settings
            },
          ),
          ListTile(
            leading: Icon(Icons.lock,
                color: AppColors.orangecolor), // Icon for Password Manager
            title: Text('Password Manager'),
            trailing:
                Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
            onTap: () {
              // Navigate to Password Manager
            },
          ),
          ListTile(
            leading: Icon(Icons.delete,
                color: AppColors.orangecolor), // Icon for Delete Account
            title: Text('Delete Account'),
            trailing:
                Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
            onTap: () {
              // Navigate to Delete Account
            },
          ),
        ],
      ),
    );
  }
}
