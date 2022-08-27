import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import './fetch_songs.dart';
import './home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
          splash: Image.asset('images/app_icon.jpg'),
          duration: 3000,
          splashTransition: SplashTransition.rotationTransition,
          backgroundColor: Colors.black,
          nextScreen: const Tracks(),
        ));
  }
}
