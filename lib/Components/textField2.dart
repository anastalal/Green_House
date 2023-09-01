// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class GHTextField2 extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final FormFieldValidator validator;

  const GHTextField2({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        validator: validator,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: const Color.fromRGBO(225, 229, 226, 1)),
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
