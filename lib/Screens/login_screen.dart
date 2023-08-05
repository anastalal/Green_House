// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:green_house/Components/signup_option.dart';
import 'package:green_house/Components/textfield.dart';
import 'package:green_house/Screens/hopepage.dart';

import '../Components/action_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            
            children: [
              //logo
              const SizedBox(height: 120,), //giving space upove the logo
              Image.asset('lib/img/logo.png'),
              
              //phrase
              const Text('Login to your account',
              style: TextStyle(
                color: Color.fromRGBO(158, 158, 158, 1),
                fontSize: 16,
              ),
              ),

              //username textfield
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

              //sign in button
              const SizedBox(height: 35,),
               ActionButton(
                ontap: () => Navigator.push(context, MaterialPageRoute(builder:(context) => TheGreenHouse(),),),
                text: 'Sign in',
              ),
              
              //sign up option
              const SizedBox(height: 20,),
              const SignUpOption(),
            ],
          ),
        ),
      ),
    );
  }
}