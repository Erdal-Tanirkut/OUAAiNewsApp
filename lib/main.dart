import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_project_deneme/view/haberlerekrani.dart';
import '/view/splashekrani.dart';




void main() async {
  Gemini.init(apiKey:'AIzaSyDvFcIiVZIwKLLa4sNQk9nT2L0zfU4uwGc');
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HaberApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const splashScreen(),
    );
  }
}
