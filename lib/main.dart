import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yourbeauty/features/authentication/screens/login/login.dart';
import 'package:yourbeauty/features/authentication/screens/onBoarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/onboarding': (context) => const OnBoardingScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Use Get.toNamed for navigation
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offNamed('/onboarding');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logos/yourbeauty-logo.png',
              height: 300.0,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
