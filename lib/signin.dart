import 'package:clothingstore/BottomNav.dart';
import 'package:clothingstore/colors.dart';
import 'package:clothingstore/signup.dart';
import 'package:clothingstore/textfwidget.dart';
import 'package:flutter/material.dart';
import 'package:clothingstore/icons.dart';

class signin extends StatelessWidget {
  signin({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whitecolor,
      resizeToAvoidBottomInset:
          true, // Adjust the screen when the keyboard is displayed
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0), // Add horizontal padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                Text(
                  "Sign In",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppColors.orangecolor),
                ),
                const SizedBox(height: 8),
                Text(
                  "Hi! Welcome Back",
                  style: TextStyle(fontSize: 20, color: AppColors.colorgrey),
                ),
                SizedBox(height: 20),
                textwidget(
                  textEditingController: emailcontroller,
                  hintText: "@example.com",
                  data: 'Email',
                ),
                SizedBox(height: 10),
                textwidget(
                  textEditingController: passwordcontroller,
                  hintText: "Password",
                  data: 'Password',
                  isPass: true,
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: AppColors.orangecolor,
                        decoration: TextDecoration.underline,
                        decorationColor: AppColors.orangecolor,
                        fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const NavigationMenu()),
                    );
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(fontSize: 20, color: AppColors.whitecolor),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(AppColors.orangecolor),
                    minimumSize: MaterialStateProperty.all(
                      Size(double.infinity, 55),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child:
                          Divider(thickness: 0.5, color: AppColors.colorgrey),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "or sign in with",
                        style: TextStyle(color: AppColors.colorgrey),
                      ),
                    ),
                    Expanded(
                      child:
                          Divider(thickness: 0.5, color: AppColors.colorgrey),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCircleAvatar(
                      icon: Icons.apple,
                      iconColor: Colors.black,
                      backgroundColor: AppColors.whitecolor,
                      borderColor: AppColors.colorgrey,
                      borderWidth: 2,
                      radius: 20,
                      iconSize: 24,
                      onPressed: () {},
                    ),
                    SizedBox(width: 8),
                    CustomCircleAvatar(
                      icon: Icons.g_mobiledata,
                      iconColor: AppColors.redcolor,
                      backgroundColor: AppColors.whitecolor,
                      borderColor: AppColors.colorgrey,
                      borderWidth: 2,
                      radius: 20,
                      iconSize: 35,
                      onPressed: () {},
                    ),
                    SizedBox(width: 8),
                    CustomCircleAvatar(
                      icon: Icons.facebook,
                      iconColor: Colors.blue,
                      backgroundColor: AppColors.whitecolor,
                      borderColor: AppColors.colorgrey,
                      borderWidth: 2,
                      radius: 20,
                      iconSize: 24,
                      onPressed: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: AppColors.colorgrey),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signup()),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: AppColors.orangecolor,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.orangecolor),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
