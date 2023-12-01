import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class ncustombutton extends StatelessWidget {
  const ncustombutton({
    super.key, required this.titel, this.onTap, this.contain,
  });
  final Widget? contain;
  final String titel;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        margin: EdgeInsets.only(
          bottom: size.width * .05,
        ),
        height:size.height * .07,
        width: size.width / 1.25,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: contain?? Text(
          titel,
          style: TextStyle(
            color: AppColors.kMainColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
