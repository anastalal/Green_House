import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final Function ontap;

  const ActionButton({
    super.key,
    required this.text,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 370,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: ElevatedButton(
        onPressed: () => ontap(),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff528540),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
