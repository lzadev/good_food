import 'package:flutter/material.dart';
import 'package:food_app/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget splashScreen = SplashScreenView(
      navigateRoute: const Home(),
      duration: 3000,
      imageSize: 70,
      imageSrc: "assets/images/forfood.png",
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      // builder: (context, child) {
      //   return ScrollConfiguration(behavior: MyBehavior(), child: splashScreen);
      // },
      home: splashScreen,
    );
  }
}
