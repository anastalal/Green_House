import 'package:flutter/material.dart';

class backbutton extends StatelessWidget {

  final Function onpressed;
  
  const backbutton({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
                    onPressed: () => onpressed,
                    icon: Container(
                      child: Image.asset('lib/img/back_button.png',),
                    ),
                    );
  }
}