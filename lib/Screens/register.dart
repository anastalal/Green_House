import 'package:flutter/material.dart';
import 'package:green_house/Components/BackButton.dart';
import 'package:green_house/Screens/home/home.dart';
import 'package:green_house/Screens/login.dart';
import 'package:green_house/models/loginuser.dart';
import 'package:green_house/services/auth.dart';
import 'package:green_house/services/checkInternetConnection.dart';

import '../Components/action_button.dart';
import '../Components/textfield.dart';
import 'package:connectivity/connectivity.dart';
import 'hopepage.dart';

class Register extends StatefulWidget {
  // SignUpScreen({super.key});
  final Function? toggleView;
  Register({this.toggleView});

  @override
  State<Register> createState() => _Register();
}

class _Register extends State<Register> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final AuthService _auth = new AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //back button
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 36),
                      child: CustomBackButton(
                        onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ),
                        ),
                        // onPressed: () {
                        //   widget.toggleView!();
                        // },
                      )),
                  Expanded(
                    child: Center(
                      child: Image.asset('lib/img/leaf.png'),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Register',
                    style: TextStyle(
                      color: Color(0xff060606),
                      fontSize: 36,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Create your new account',
                    style: TextStyle(
                      color: Color.fromRGBO(158, 158, 158, 1),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              //udername textfield
              Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 31,
                      ),

                      GHTextField(
                        controller: usernameController,
                        hintText: '    Email',
                        validator: (value) {
                          if (value != null) {
                            if (value.contains('@') && value.endsWith('.com')) {
                              return null;
                            }
                            return 'Enter a Valid Email Address';
                          }
                        },
                        obscureText: false,
                      ),

                      //password textfield
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

                      //confirm password textfield
                      const SizedBox(
                        height: 18,
                      ),
                      GHTextField(
                        controller: repasswordController,
                        hintText: '    Confirm Password',
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'This field is required';
                          }
                          if (value != passwordController.text) {
                            return 'Passwords do not match!';
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
              //sign up buttton
              const SizedBox(
                height: 35,
              ),

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

                      dynamic result = await _auth.registerEmailPassword(
                          LoginUser(email: email, password: password));

                      // Close the loading dialog
                      Navigator.pop(context);

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
                      else {
                        print("object");
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) => Home()),
                        );
                      }
                    }

                },
                text: 'Register',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
