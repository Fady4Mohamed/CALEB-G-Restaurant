

import 'package:caleb_g/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: SizedBox(
          width: size.width * 0.7,
          height: size.height * .07,
          child: Center(
              child: Text(
            'Get starteed',
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
