// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:green_house/Components/signup_option.dart';
import 'package:green_house/Screens/hopepage.dart';
import 'package:green_house/Screens/login_screen.dart';
import 'package:green_house/Screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

