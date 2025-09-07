import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.onInitializationComplete});

  final VoidCallback onInitializationComplete;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    widget.onInitializationComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x0000a862),
      body: Center(
        child: CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage('assets/images/logo.png'),
        ),
      ),
    );
  }
}
