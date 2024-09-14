import 'package:clothingstore/colors.dart';
import 'package:clothingstore/images.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        title: Text('Favorites', style: TextStyle(color: AppColors.whitecolor)),
        centerTitle: true,
        backgroundColor: AppColors.orangecolor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: _buildFavoriteCards(),
        ),
      ),
    );
  }

  List<Widget> _buildFavoriteCards() {
    return [
      FavoriteCard(
        cimage: AppImages.pic7, // replace with your image path
        name: 'Green Suit',
        price: '\$83.97',
        rating: '4.9',
      ),
      FavoriteCard(
        cimage: AppImages.pic8, // replace with your image path
        name: 'Pink Suit',
        price: '\$120.00',
        rating: '5.0',
      ),
      FavoriteCard(
        cimage: AppImages.pic11, // replace with your image path
        name: 'Pink Suit',
        price: '\$120.00',
        rating: '5.0',
      ),
      FavoriteCard(
        cimage: AppImages.pic12, // replace with your image path
        name: 'Pink Suit',
        price: '\$120.00',
        rating: '5.0',
      ),
      FavoriteCard(
        cimage: AppImages.pic9, // replace with your image path
        name: 'Pink Suit',
        price: '\$120.00',
        rating: '5.0',
      ),
      FavoriteCard(
        cimage: AppImages.pic10, // replace with your image path
        name: 'Pink Suit',
        price: '\$120.00',
        rating: '5.0',
      ),
      FavoriteCard(
        cimage: AppImages.pic13, // replace with your image path
        name: 'Pink Suit',
        price: '\$120.00',
        rating: '5.0',
      ),

      // Add more cards as needed
    ];
  }
}

class FavoriteCard extends StatelessWidget {
  final String cimage;
  final String name;
  final String price;
  final String rating;

  const FavoriteCard({
    required this.cimage,
    required this.name,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      cimage,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Positioned Heart Icon in a Circle Avatar
                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red, // Filled heart color
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 16,
                      ),
                      Text(
                        rating,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                price,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
