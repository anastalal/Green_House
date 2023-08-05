// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GHTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;


  const GHTextField({
  super.key,
  required this.controller,
  required this.hintText,
  required this.obscureText,

  }
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal:30.0 ),
                
                child: TextField(
                  
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                  
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromRGBO(225, 229, 226, 1)),
                      borderRadius: BorderRadius.circular(10),
                    
                    ),
                    fillColor: const Color.fromRGBO(225, 229, 226, 1),
                    filled: true,
                    hintText: hintText,
                    
                  ),
                ),
              );
  }
}