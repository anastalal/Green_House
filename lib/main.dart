// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:green_house/Components/signup_option.dart';
import 'package:green_house/Screens/hopepage.dart';
import 'package:green_house/Screens/login.dart';
import 'package:green_house/Screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:green_house/Screens/wrapper.dart';
import 'package:green_house/models/firebaseuser.dart';
import 'package:green_house/services/auth.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        // theme: ThemeData(
        //   brightness: Brightness.light,
        //   primaryColor: Colors.black,
        //   buttonTheme: ButtonThemeData(
        //     buttonColor: Colors.black,
        //     textTheme: ButtonTextTheme.primary,
        //     colorScheme:
        //         Theme.of(context).colorScheme.copyWith(secondary: Colors.white),
        //   ),
        //   fontFamily: 'Georgia',
        //   textTheme: const TextTheme(
        //     headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
        //     headline6: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
        //     bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        //   ),
        // ),
        home: Wrapper(),
      ),
    );
  }
}
