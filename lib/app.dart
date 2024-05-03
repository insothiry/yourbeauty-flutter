// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yourbeauty/features/authentication/screens/onboarding.dart';
// import 'package:yourbeauty/utils/theme/theme.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       themeMode: ThemeMode.system,
//       theme: TAppTheme.lightTheme,
//       darkTheme: TAppTheme.darkTheme,
//       home: const OnBoardingScreen(),
//     );
//   }
// }

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(
//       const Duration(seconds: 3),
//       () {
//         print('Navigating to onboarding screen');
//         Navigator.pushReplacementNamed(context, '/OnBoarding');
//         print('Navigation completed');
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Image.asset(
//               'assets/logos/yourbeauty-logo.png',
//               height: 300.0,
//               width: 300,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Text('Welcome to your home screen!'),
//       ),
//     );
//   }
// }
