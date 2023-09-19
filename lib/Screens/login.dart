// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:green_house/Components/CustomSnackBar.dart';
import 'package:green_house/Components/signup_option.dart';
import 'package:green_house/Components/textfield.dart';
import 'package:connectivity/connectivity.dart';
import 'package:green_house/models/loginuser.dart';
import 'package:green_house/services/checkInternetConnection.dart';

import '../Components/action_button.dart';
import '../services/auth.dart';
import 'dart:developer';

class Login extends StatefulWidget {
  final Function? toggleView;
  // const LoginScreen({super.key, this.toggleView});
  Login({this.toggleView});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  // final Function? toggleView;
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                //logo
                const SizedBox(
                  height: 120,
                ), //giving space upove the logo
                Image.asset('lib/img/logo.png'),

                //phrase
                const Text(
                  'Login to your account',
                  style: TextStyle(
                    color: Color.fromRGBO(158, 158, 158, 1),
                    fontSize: 16,
                  ),
                ),

                //username textfield
                const SizedBox(
                  height: 31,
                ),
                Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: _formKey,
                    child: Column(
                      children: [
                        GHTextField(
                          controller: usernameController,
                          hintText: '    Email',
                          obscureText: false,
                          validator: (value) {
                            if (value != null) {
                              if (value.contains('@') &&
                                  value.endsWith('.com')) {
                                return null;
                              }
                              return 'Enter a Valid Email Address';
                            }
                            return 'This field is required';
                          },
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        GHTextField(
                          controller: passwordController,
                          hintText: '    Password',
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return 'This field is required';
                            }
                            if (value.trim().length < 8) {
                              return 'Password must be at least 8 characters in length';
                            }
                            // Return null if the entered password is valid
                            return null;
                          },
                          obscureText: true,
                        ),
                      ],
                    )),
                // GHTextField(
                //   controller: usernameController,
                //   hintText: '    Email',
                //   obscureText: false,
                //   validator: (value) {
                //     if (value != null) {
                //       if (value.contains('@') && value.endsWith('.com')) {
                //         return null;
                //       }
                //       return 'Enter a Valid Email Address';
                //     }
                //     return 'This field is required';
                //   },
                // ),

                //password textfield
                // const SizedBox(
                //   height: 18,
                // ),
                // GHTextField(
                //   controller: passwordController,
                //   hintText: '    Password',
                //   validator: (value) {
                //     if (value == null || value.trim().isEmpty) {
                //       return 'This field is required';
                //     }
                //     if (value.trim().length < 8) {
                //       return 'Password must be at least 8 characters in length';
                //     }
                //     // Return null if the entered password is valid
                //     return null;
                //   },
                //   obscureText: true,
                // ),

                //sign in button
                const SizedBox(
                  height: 35,
                ),
                // ActionButton(
                //   ontap: () async {
                //     final email = usernameController?.text ?? "";
                //     final password = passwordController?.text ?? "";
                //     // print(usernameController.text);
                //     if (_formKey.currentState != null &&
                //         _formKey.currentState!.validate()) {
                //       dynamic result = await _auth.signInEmailPassword(
                //           LoginUser(email: email, password: password));
                //       if (result == null || result.uid == null) {
                //         //null means unsuccessfull authentication
                //         showDialog(
                //             context: context,
                //             builder: (context) {
                //               return AlertDialog(
                //                 content: Text(result.code),
                //               );
                //             });
                //       } else {
                //         print("object");
                //       }
                //     }
                //   },
                //   text: 'Sign in',
                // ),
                ActionButton(
                  ontap: () async {
                    await checkInternetConnection(context);
                    final email = usernameController?.text ?? "";
                    final password = passwordController?.text ?? "";
                    if (_formKey.currentState != null &&
                        _formKey.currentState!.validate()) {
                      // Show a loading indicator or animation here
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return Center(
                            child:
                                CircularProgressIndicator(), // You can use any loading animation here
                          );
                        },
                      );
                      // await checkInternetConnection(context);
                      dynamic result = await _auth.signInEmailPassword(
                          LoginUser(email: email, password: password));
                      // Close the loading dialog
                      // Navigator.pop(context);
                      //    if (context != null) {
                      //   Navigator.pop(context);
                      // }

                      if (result == null || result.uid == null) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text(result.code),
                            );
                          },
                        );
                      }
                    }
                    if (context != null) {
                      Navigator.pop(context);
                    }
                  },
                  text: 'Sign in',
                ),

                //sign up option
                const SizedBox(
                  height: 20,
                ),
                const SignUpOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
