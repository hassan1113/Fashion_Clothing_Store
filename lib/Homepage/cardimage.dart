import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:clothingstore/FavModel.dart';
import 'package:clothingstore/Homepage/Addtocart.dart';
import 'package:clothingstore/colors.dart';

class ProductCard extends StatefulWidget {
  final String cimage;
  final String name;
  final String price;
  final String rating;
  final String itemId; // Unique ID for the item

  ProductCard({
    required this.cimage,
    required this.name,
    required this.price,
    required this.rating,
    required this.itemId,
  });

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  late bool isFavorited;

  @override
  void initState() {
    super.initState();
    // Initialize the isFavorited state
    isFavorited = Provider.of<FavoritesProvider>(context, listen: false)
        .favorites
        .any((item) => item.name == widget.name && item.price == widget.price);
  }

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return GestureDetector(
      onTap: () {
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
                            if (isFavorited) {
                              favoritesProvider.addFavorite(Product(
                                cimage: widget.cimage,
                                name: widget.name,
                                price: widget.price,
                                rating: widget.rating,
                              ));
                            } else {
                              favoritesProvider.removeFavorite(Product(
                                cimage: widget.cimage,
                                name: widget.name,
                                price: widget.price,
                                rating: widget.rating,
                              ));
                            }
                          });
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(
                            isFavorited ? Icons.favorite : Icons.favorite_border,
                            color: isFavorited ? Colors.red : AppColors.blackcolor,
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
