import 'package:flutter/material.dart';
import 'package:green_house/Screens/signup_screen.dart';

class SignUpOption extends StatelessWidget {
  const SignUpOption({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don’t have an account? ",
                  style: TextStyle(
                    color: Color.fromRGBO(158, 158, 158, 1),
                    fontSize: 16,
                  ),
                  ),

                  GestureDetector(
                  onTap: (){ 
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => SignUpScreen()),);
                    },
                  child: const Text("Sign up",
                  
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Color(0xff325A3E),
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  ),
                ],
              );
  }
}