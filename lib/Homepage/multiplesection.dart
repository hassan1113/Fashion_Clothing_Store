import 'package:clothingstore/Homepage/Addtocart.dart';
import 'package:flutter/material.dart';
import 'package:clothingstore/colors.dart';
import 'package:clothingstore/images.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _activeIndex = 0;

  void _handleButtonPress(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _handleButtonPress(0),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _activeIndex == 0
                      ? AppColors.orangecolor
                      : AppColors.whitecolor,
                ),
                child: Text(
                  'All',
                  style: TextStyle(
                    color: _activeIndex == 0
                        ? AppColors.whitecolor
                        : AppColors.blackcolor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _handleButtonPress(1),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _activeIndex == 1
                      ? AppColors.orangecolor
                      : AppColors.whitecolor,
                ),
                child: Text(
                  'Newest',
                  style: TextStyle(
                    color: _activeIndex == 1
                        ? AppColors.whitecolor
                        : AppColors.blackcolor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _handleButtonPress(2),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _activeIndex == 2
                      ? AppColors.orangecolor
                      : AppColors.whitecolor,
                ),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    color: _activeIndex == 2
                        ? AppColors.whitecolor
                        : AppColors.blackcolor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _handleButtonPress(3),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _activeIndex == 3
                      ? AppColors.orangecolor
                      : AppColors.whitecolor,
                ),
                child: Text(
                  'Man',
                  style: TextStyle(
                    color: _activeIndex == 3
                        ? AppColors.whitecolor
                        : AppColors.blackcolor,
                  ),
                ),
              ),
              SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _handleButtonPress(4),
                style: ElevatedButton.styleFrom(
                  backgroundColor: _activeIndex == 4
                      ? AppColors.orangecolor
                      : AppColors.whitecolor,
                ),
                child: Text(
                  'Woman',
                  style: TextStyle(
                    color: _activeIndex == 4
                        ? AppColors.whitecolor
                        : AppColors.blackcolor,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.all(10),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: _buildProductCards(),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildProductCards() {
    if (_activeIndex == 0) {
      return [
        ProductCard(
          cimage: AppImages.pic7,
          name: 'Green Suit',
          price: '\$83.97',
          rating: '4.9',
          itemId: 'brown_jacket', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic8,
          name: 'Pink Suit',
          price: '\$120.00',
          rating: '5.0',
          itemId: 'brown_suit', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic11,
          name: 'Dress',
          price: '\$100.00',
          rating: '5.0',
          itemId: 'brown_suit', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic12,
          name: 'Dress',
          price: '\$50.00',
          rating: '5.0',
          itemId: 'brown_suit', // Unique ID for the item
        ),

        // Additional products...
      ];
    } else if (_activeIndex == 1) {
      return [
        ProductCard(
          cimage: AppImages.pic11,
          name: 'Dress',
          price: '\$30.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic12,
          name: 'Dress',
          price: '\$123.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        // Additional products...
      ];
    }
     else if (_activeIndex == 2) {
      return [
        ProductCard(
          cimage: AppImages.pic8,
          name: 'Dress',
          price: '\$30.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic11,
          name: 'Dress',
          price: '\$123.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        // Additional products...
      ];
      }
      else if (_activeIndex == 3) {
      return [
        ProductCard(
          cimage: AppImages.pic10,
          name: 'Dress',
          price: '\$30.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic9,
          name: 'Dress',
          price: '\$123.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic13,
          name: 'Dress',
          price: '\$123.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        // Additional products...
      ];
      }
      else 
      {
        return [
        ProductCard(
          cimage: AppImages.pic8,
          name: 'Dress',
          price: '\$30.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic11,
          name: 'Dress',
          price: '\$123.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        ),
        ProductCard(
          cimage: AppImages.pic10,
          name: 'Dress',
          price: '\$123.00',
          rating: '4.8',
          itemId: 'black_tshirt', // Unique ID for the item
        )

        // Additional products...
      ];
      }
 
  }
}

class ProductCard extends StatefulWidget {
  final String cimage;
  final String name;
  final String price;
  final String rating;

  ProductCard({
    required this.cimage,
    required this.name,
    required this.price,
    required this.rating,
    required String itemId,
  });

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to AddToCartPage when the card is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              cimage: widget.cimage,
              name: widget.name,
              price: widget.price,
              rating: widget.rating,
            ),
          ),
        );
      },
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.whitecolor,
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
                        widget.cimage,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isFavorited = !isFavorited;
                            // Add/remove from favorites functionality
                            if (isFavorited) {
                              // Add to favorites logic
                            } else {
                              // Remove from favorites logic
                            }
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            isFavorited
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:
                                isFavorited ? Colors.red : AppColors.blackcolor,
                          ),
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
                      widget.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        Text(
                          widget.rating,
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
                  widget.price,
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
