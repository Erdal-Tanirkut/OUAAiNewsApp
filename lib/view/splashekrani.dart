import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'kayitekrani.dart';

class splashScreen extends StatefulWidget {
  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    firebaseInitialize();
  }

  Future<void> firebaseInitialize() async {
    await Firebase.initializeApp();
    await Future.delayed(Duration(seconds: 4)); // Delay for splash screen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => RegisterPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png', // Ensure the image is added in your assets folder
              width: 200,
              height: 200,
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}