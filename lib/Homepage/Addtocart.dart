import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';
import 'package:clothingstore/Homepage/cart_model.dart';
import 'package:provider/provider.dart';


class ProductDetailsPage extends StatelessWidget {
  final String cimage;
  final String name;
  final String rating;
  final String price;

  // Constructor
  ProductDetailsPage(
      {required this.cimage,
      required this.name,
      required this.rating,
      required this.price});

  // List of available sizes and colors
  final List<String> sizeOptions = ['S', 'M', 'L', 'XL', 'XXL'];
  final List<Color> colorOptions = [
    AppColors.browncolor,
    AppColors.gray600,
    AppColors.blackcolor,
    AppColors.orangecolor,
    AppColors.yellowcolor,
    AppColors.redcolor,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Product Details',
          style: TextStyle(color: AppColors.whitecolor),
          textAlign: TextAlign.center,
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Center(
              child: Image.asset(
                cimage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),

            // Product Name
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(Icons.star, color: AppColors.yellowcolor),
                      SizedBox(width: 4),
                      Text(
                        rating,
                        style:
                            TextStyle(fontSize: 18, color: AppColors.colorgrey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Product Details",
              style: TextStyle(color: AppColors.blackcolor, fontSize: 18),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod, nunc vel tincidunt lacinia, nunc nisl lacinia nisl, eget lacinia.",
              style: TextStyle(color: AppColors.colorgrey, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: AppColors.colorgrey, // Color of the bottom border
                    width: 1.0, // Width of the bottom border
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Size Selector
            Text(
              'Select Size:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: sizeOptions.map((size) {
                return ChoiceChip(
                  label: Text(size),
                  selected: false, // This can be updated later for selection
                  onSelected: (bool selected) {
                    // Action on size selection can be added here
                  },
                );
              }).toList(),
            ),
            SizedBox(height: 10),
            // Color Selector
            Text(
              'Select Color:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: colorOptions.map((color) {
                return Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 16),

            // Add to Cart Button
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 0), // Circular notch on top
        notchMargin: 8.0, // Margin around the notch
        child: Container(
          height: 80,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.white, // Background color
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), // Left circular radius
              topRight: Radius.circular(20), // Right circular radius
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, -3), // Shadow effect
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Price
              Column(
                children: [
                  Text(
                    'Total Price',
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.colorgrey, // Price color
                    ),
                  ),
                  Text(
                    '$price',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.blackcolor, // Price color
                    ),
                  ),
                ],
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Colors.orange, // Background color for the button
                  padding: EdgeInsets.symmetric(horizontal: 26, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  // Create a Product object with the relevant details
                  final product = Product(
                    name: name,
                    image: cimage,
                    price: double.tryParse(price.replaceAll('\$', '')) ??
                        0.0, // Convert price to double
                    quantity: 1, // Default quantity when adding to the cart
                  );

                  // Add the product to the cart using the CartModel
                  Provider.of<CartModel>(context, listen: false)
                      .addProduct(product);

                  // Optional: Show a SnackBar or some feedback that product has been added to cart
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$name has been added to your cart!'),
                    ),
                  );
                },

                icon: Icon(Icons.shopping_bag,
                    color: AppColors.whitecolor), // Cart Icon
                label: Text(
                  'Add to Cart',
                  style: TextStyle(
                      color: AppColors.whitecolor,
                      fontSize: 16), // Button Text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
