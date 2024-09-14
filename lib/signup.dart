import 'package:clothingstore/colors.dart';
import 'package:clothingstore/signin.dart';
import 'package:clothingstore/textfwidget.dart';
import 'package:flutter/material.dart';
import 'package:clothingstore/icons.dart';

class signup extends StatelessWidget {
  signup({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();

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
                  "Sign Up",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: AppColors.orangecolor),
                ),
                const SizedBox(height: 8),
                Text(
                  "Fill your information below or register with your social account",
                  style: TextStyle(fontSize: 18, color: AppColors.colorgrey),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 5),
                textwidget(
                  textEditingController: namecontroller,
                  hintText: "John Dae",
                  data: 'Name',
                ),
                // SizedBox(height: 5),
                textwidget(
                  textEditingController: emailcontroller,
                  hintText: "@example.com",
                  data: 'Email',
                ),
                // SizedBox(height: 5),
                textwidget(
                  textEditingController: passwordcontroller,
                  hintText: "Password",
                  data: 'Password',
                  isPass: true,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
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
                SizedBox(height: 20),
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
                SizedBox(height: 10),
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
                      iconColor: Colors.red,
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: AppColors.colorgrey),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigate to Sign Up page
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => signin()),
                        );
                      },
                      child: Text(
                        "Sign In",
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
