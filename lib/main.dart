import 'package:flutter/material.dart';
import 'package:starbucks_clone/screens/splash_screen.dart';
import 'package:starbucks_clone/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Starbucks',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Builder(
        builder: (BuildContext context) {
          return SplashScreen(
            onInitializationComplete: () {
              // Navigation after the splash screen duration
              Future.delayed(const Duration(seconds: 3), () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              });
            },
          );
        },
      ),
    );
  }
}
