import 'package:clothingstore/Favorites.dart';
import 'package:clothingstore/Homepage/homepage.dart';
import 'package:clothingstore/chat/chat.dart';
import 'package:clothingstore/colors.dart';
import 'package:clothingstore/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: AppColors.whitecolor,
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10, offset: Offset(0, -2))],
          ),
          child: BottomNavigationBar(
            currentIndex: controller.selectedIndex.value,
            onTap: (index) => controller.selectedIndex.value = index,
            items: [
              _buildBottomNavigationBarItem(Icons.home, ''),
              _buildBottomNavigationBarItem(Icons.favorite_outline, ''),
              _buildBottomNavigationBarItem(Icons.message, ''),
              _buildBottomNavigationBarItem(Icons.person, ''),
            ],
            unselectedItemColor: AppColors.colorgrey,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
      activeIcon: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: AppColors.orangecolor,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(icon, color: Colors.white, size: 30),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePagee(),
    FavoritePage(),
    const HomePage(),
    ProfilePage(),
  ];
}
