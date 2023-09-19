// ignore_for_file: unused_import, prefer_const_constructors
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:green_house/Components/navBottom.dart';
import 'package:green_house/Components/signup_option.dart';
// import 'package:green_house/Screens/home/my_Home.dart';
import 'package:green_house/Screens/login.dart';
import 'package:green_house/Screens/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:green_house/Screens/wrapper.dart';
import 'package:green_house/models/firebaseuser.dart';
import 'package:green_house/services/auth.dart';
import 'package:provider/provider.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:syncfusion_flutter_charts/sparkcharts.dart';

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
        debugShowCheckedModeBanner: false,
        //ThegreenhouseWidget
        // home: Text("test"),
        home: EasySplashScreen(
          logo: Image.asset('lib/img/splash.jpg'),
          backgroundColor: Colors.white,
          logoWidth: 70.0,
          showLoader: true,
          loadingText: Text("Loading..."),
          navigator: Wrapper(),
          durationInSeconds: 3,
        ),
      ),
    );
  }
}
