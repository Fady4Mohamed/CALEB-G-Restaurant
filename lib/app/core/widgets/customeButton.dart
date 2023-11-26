

import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.size,
    required this.onPressed,
    required this.titel,
  });
  final void Function()? onPressed;
  final String titel;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: SizedBox(
          width: size.width * 0.7,
          height: size.height * .07,
          child: Center(
              child: Text(
             titel,
            style: TextStyle(color: AppColors.kMainColor,
            fontSize: 18),
            
          ))),
      style: ButtonStyle(
          shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (context) {
            return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30));
          }),
          backgroundColor: MaterialStateProperty.all(Colors.white)),
    );
  }
}
