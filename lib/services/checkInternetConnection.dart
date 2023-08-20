import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

Future<void> checkInternetConnection(context) async {
  var connectivityResult = await (Connectivity().checkConnectivity());

  if (connectivityResult == ConnectivityResult.none) {
    // لا يوجد اتصال بالإنترنت
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("No Internet Connection"),
          content: Text("Please check your internet connection."),
        );
      },
    );
  } else {
    // هنا يمكنك تنفيذ العملية التي تحتاج الاتصال بالإنترنت
  }
}
