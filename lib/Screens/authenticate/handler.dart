// import 'package:green_house/screens/authenticate/login.dart';
import 'package:green_house/Screens/login.dart';
import 'package:green_house/screens/register.dart';
import 'package:flutter/material.dart';

class Handler extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Handler();
  }
}

class _Handler extends State<Handler> {
  bool showSignin = true;

  void toggleView() {
    setState(() {
      showSignin = !showSignin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignin) {
      // return LoginScreen(toggleView: toggleView);
      return Login(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
