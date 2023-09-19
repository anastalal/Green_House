import 'package:green_house/Components/navBottom.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../models/firebaseuser.dart';
import 'authenticate/handler.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<FirebaseUser?>(context);
    if (user == null) {
      return Handler();
    } else {
      return NavBottom();
    }
  }
}
