
  import 'package:flutter/material.dart';
class ncustomtextfield extends StatelessWidget {
  const ncustomtextfield({super.key, required this.icon, required this.hintText,  this.isPassword=false, this.onchanged});
 final IconData icon ;
 final String hintText ;
 final bool isPassword;
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
        color: const Color.fromARGB(255, 255, 255, 255).withOpacity(.3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        onChanged:onchanged ,
        style: TextStyle(
          color: Colors.white.withOpacity(.9),
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white.withOpacity(.8),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.white.withOpacity(.5),
          ),
        ),
      ),
    );
  }
}
