import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'kayitekrani.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firebaseInitialize();
  }
  Future <void> firebaseInitialize () async {
    await Firebase.initializeApp();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => RegisterPage(),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child:CircularProgressIndicator(),
        ));
  }

}


