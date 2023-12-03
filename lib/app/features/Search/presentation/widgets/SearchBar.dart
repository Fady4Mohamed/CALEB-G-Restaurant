import 'package:flutter/material.dart';

class MYSearchBar extends StatelessWidget {
  const MYSearchBar({super.key,this.onchanged});
 final void Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Container(
      height: size.height*.07,
      width: size.width / 1.25,
      alignment: Alignment.center,
      padding: EdgeInsets.only(right: size.width / 30),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.2),
        borderRadius: BorderRadius.circular(40),
      ),
      child: TextField(
        onChanged:onchanged ,
        style: TextStyle(
          color:  Colors.black.withOpacity(.9),
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black.withOpacity(.8),
          ),
          border: InputBorder.none,
          hintMaxLines: 1,
          hintText: 'Search',
          hintStyle: TextStyle(
            fontSize: 14,
            color: Colors.black.withOpacity(.5),
          ),
        ),
      ),
    );
  }
}