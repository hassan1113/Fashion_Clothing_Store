import 'package:clothingstore/FavModel.dart';
import 'package:clothingstore/Help.dart';
import 'package:clothingstore/Homepage/cart_model.dart';
import 'package:clothingstore/Onboardscreen/OnboardingScreen.dart';
import 'package:clothingstore/consts.dart';
import 'package:clothingstore/getstart.dart';
import 'package:clothingstore/payment.dart';
import 'package:clothingstore/privacy.dart';
import 'package:clothingstore/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'splashscreen.dart';

void main() {
    Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
        ChangeNotifierProvider(create: (context) => FavoritesProvider()), // Add FavoritesProvider
      ],
      child: const ClothingStore(),
    ),
  );
}

class ClothingStore extends StatelessWidget {
  const ClothingStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/homepage': (context) => Getstart(), // Define the homepage route
        '/onboard': (context) => OnBoardScreen(), 
        '/settings': (context) => SettingsScreen(),
        '/payment': (context) => PaymentMethodsScreen(),
        '/help': (context) => HelpCenterScreen(),
        '/privacy': (context) => PrivacyPolicyScreen(),
         // Define the onboarding route
      },
    );
  }
}
