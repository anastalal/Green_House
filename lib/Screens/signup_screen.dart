import 'package:flutter/material.dart';
import 'package:green_house/Components/back_button.dart';
import 'package:green_house/Screens/login_screen.dart';

import '../Components/action_button.dart';
import '../Components/textfield.dart';
import 'hopepage.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          
          children: [
            //back button
            const SizedBox(height: 20,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 36),
                   child: backbutton(onpressed: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ( context) => LoginScreen()),)
                   )
                ),

                const SizedBox(width: 136,),

                 //leafe art
                 Image.asset('lib/img/leaf.png')
              ],
            ),

            //text fields
            const Column(
              children: [

                Text('Register',
                  style: TextStyle(
                    color: Color(0xff060606),
                    fontSize: 36,
                  ),
                  ),

                SizedBox(height: 24,),  

                Text('Create your new account',
                  style: TextStyle(
                    color: Color.fromRGBO(158, 158, 158, 1),
                    fontSize: 16,
                  ),
                  ),
              ],
            ),
            
          
            //udername textfield
             const SizedBox(height: 31,),
              GHTextField(
                controller: usernameController,
                hintText: '    Username',
                obscureText: false,
              ),

            //password textfield
            const SizedBox(height: 18,),
              GHTextField(
                controller: passwordController,
                hintText: '    Password',
                obscureText: true,
              ),

            //confirm password textfield
            const SizedBox(height: 18,),
              GHTextField(
                controller: passwordController,
                hintText: '    Confirm Password',
                obscureText: true,
              ),

            //sign up buttton
            const SizedBox(height: 35,),
              ActionButton(
                ontap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => const TheGreenHouse(),),),
                text: 'Sign Up',
              ),
            
          ],
        ),
      ),
    );
  }
}