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
      duration: 5000,
      imageSize: 200,
      imageSrc: "assets/images/goodfood.png",
      text: "GOOD FOOD",
      textType: TextType.ColorizeAnimationText,
      textStyle:
          GoogleFonts.robotoSlab(fontWeight: FontWeight.bold, fontSize: 40.0),
      colors: const [
        Color.fromARGB(255, 255, 183, 0),
        Color.fromARGB(255, 234, 47, 41),
        Color.fromARGB(255, 72, 34, 13)
      ],
      backgroundColor: Colors.white,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      builder: (context, child) {
        return ScrollConfiguration(behavior: MyBehavior(), child: const Home());
      },
      home: splashScreen,
    );
  }
}
