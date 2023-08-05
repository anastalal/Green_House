import 'package:flutter/material.dart';
import 'package:green_house/Components/back_button.dart';

import 'login_screen.dart';

class TheGreenHouse extends StatelessWidget {
  const TheGreenHouse({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          
          children: [
            //back button
            const SizedBox(height: 40,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                  child: backbutton(onpressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ( context) => LoginScreen()),)),
                ),
                const SizedBox(width: 30,),
                Image.asset('lib/img/logo2.png')
              ],
            ),
            
            //upper stats
            const SizedBox(height: 40,),
            
             
          ],
        ),
      ),
    );
  }
}