import 'package:clothingstore/Homepage/cart_model.dart';
import 'package:clothingstore/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatefulWidget {
  @override
  _MyCartPageState createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    final cartModel = Provider.of<CartModel>(context);
    final products = cartModel.products;

    // Calculate total price for all products
    double totalPrice = products.fold(
        0, (sum, product) => sum + (product.price * product.quantity));

    // Calculate total quantity for all products
    int totalQuantity =
        products.fold(0, (sum, product) => sum + product.quantity);
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      appBar: AppBar(
        title: Text('My Cart', style: TextStyle(color: AppColors.whitecolor)),
        centerTitle: true,
        backgroundColor: AppColors.orangecolor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: CircleAvatar(
              backgroundColor: AppColors.whitecolor,
              child: Icon(Icons.arrow_back, color: AppColors.orangecolor),
            )),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Card(
                  elevation: 5.0,
                  margin: EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.whitecolor,
                    ),
                    child: Stack(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(8.0),
                          leading: Image.asset(
                            product.image,
                            height: 100.0,
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            product.name,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                              'Price: \$${product.price.toStringAsFixed(2)}'),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove, size: 20),
                                color: AppColors.orangecolor,
                                onPressed: () {
                                  if (product.quantity > 1) {
                                    cartModel.updateQuantity(
                                        index, product.quantity - 1);
                                  }
                                },
                                style: IconButton.styleFrom(
                                  foregroundColor: AppColors.orangecolor,
                                ),
                              ),
                              Text(
                                  '${product.quantity}'), // Show current quantity
                              IconButton(
                                icon: Icon(Icons.add, size: 20),
                                color: AppColors.orangecolor,
                                onPressed: () {
                                  cartModel.updateQuantity(
                                      index, product.quantity + 1);
                                },
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -10,
                          right: -10,
                          child: IconButton(
                            icon: Icon(Icons.close,
                                color: AppColors.redcolor, size: 20),
                            onPressed: () {
                              setState(() {
                                cartModel.removeProduct(index);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackcolor.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(0, -3), // changes position of shadow
                ),
              ],
              color: AppColors.whitecolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Items',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '$totalQuantity',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$${totalPrice.toStringAsFixed(2)}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle checkout logic here
                    },
                    child: Text(
                      'Checkout',
                      style:
                          TextStyle(color: AppColors.whitecolor, fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: AppColors.orangecolor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
