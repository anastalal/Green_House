import 'package:flutter/material.dart';

// class backbutton extends StatelessWidget {
//   final VoidCallback onpressed;

//   const backbutton({super.key, required this.onpressed});

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       onPressed: () => onpressed,
//       icon: Container(
//         child: Image.asset(
//           'lib/img/back_button.png',
//         ),
//       ),
//     );
//   }
// }
class CustomBackButton extends StatelessWidget {
  final Function onPressed;

  const CustomBackButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => onPressed(),
      icon: Container(
        child: Image.asset('lib/img/back_button.png'),
      ),
    );
  }
}
