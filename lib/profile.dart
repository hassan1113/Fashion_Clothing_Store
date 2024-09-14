import 'package:clothingstore/colors.dart';
import 'package:clothingstore/images.dart';
import 'package:clothingstore/signin.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        title: const Text('Profile', style: TextStyle(color: AppColors.whitecolor)),
        centerTitle: true,
        backgroundColor: AppColors.orangecolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Profile Picture
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(AppImages.profile),
              backgroundColor: AppColors.whitecolor,
              child: Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.orangecolor,
                  child: Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Name
            const Text(
              'User',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            // List of Profile Options
            _buildProfileOption(Icons.person, 'Your Profile', () {}),
            _buildProfileOption(Icons.payment, 'Payment Methods', () {
              Navigator.pushNamed(context, '/payment');
            }),
            _buildProfileOption(Icons.shopping_bag, 'My Orders', () {}),
            _buildProfileOption(Icons.settings, 'Settings', () {
              Navigator.pushNamed(context, '/settings');
            }),
            _buildProfileOption(Icons.help, 'Help Center', () {
              Navigator.pushNamed(context, '/help');
            }),
            _buildProfileOption(Icons.policy, 'Privacy Policy', () {
              Navigator.pushNamed(context, '/privacy');
            }),
            _buildProfileOption(Icons.group, 'Invite Friends', () {}),
            // Logout Option with Confirmation
            _buildProfileOption(Icons.logout, 'Log out', () {
              _showLogoutDialog(context);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileOption(IconData icon, String title, Function onTap) {
    return ListTile(
      leading: Icon(icon, color: AppColors.orangecolor),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, color: AppColors.orangecolor),
      onTap: () {
        onTap();
      },
    );
  }

  // Logout confirmation dialog
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Logout'),
          content: Text('Are you sure you want to log out?'),
          actions: [
            TextButton(
              child: Text('Cancel', style: TextStyle(color: AppColors.orangecolor)),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.orangecolor, // Button color
              ),
              child: Text('Yes, Logout', style: TextStyle(color: AppColors.whitecolor)),
              onPressed: () {
                Navigator.push(context, 
                  MaterialPageRoute(builder: (context) => signin()),
                ); // Close the dialog
                // Add your logout functionality here
              },
            ),
          ],
        );
      },
    );
  }
}
