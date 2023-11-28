
  import 'package:flutter/material.dart';
class ncustomtextfield extends StatelessWidget {
  const ncustomtextfield({super.key, required this.icon, required this.hintText,  this.isPassword=false, this.onchanged,  this.iconColor=Colors.white});
 final IconData icon ;
 final String hintText ;
 final bool isPassword;
 final Color iconColor;
 final void Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.width / 8,
      width: size.width / 1.25,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(
        color: iconColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged:onchanged ,
        style: TextStyle(
          color: iconColor.withOpacity(.9),
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color:iconColor ,
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color:iconColor.withOpacity(.5),
          ),
        ),
      ),
    );
  }
}
