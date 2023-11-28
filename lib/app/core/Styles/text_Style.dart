import 'package:flutter/material.dart';

class style {
  static TextStyle style50({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.15,
      fontWeight: FontWeight.w400,
      color: Colors.white
    );
  }
  static TextStyle style30({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.08,
    );
  }

  static TextStyle style25({required BuildContext context}) {
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.bold);
  }

  static TextStyle style25s({required BuildContext context}) {
    return TextStyle(
        color: const Color(0xff4A4B4D),
        fontSize: MediaQuery.of(context).size.width * 0.062,
        fontWeight: FontWeight.normal);
  }

  static TextStyle style22({required BuildContext context}) {
    return TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.05,
        fontWeight: FontWeight.normal);
  }

  static TextStyle style17({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.045,
    );
  }

  static TextStyle style14({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.038,
    );
  }

  static TextStyle style12({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.035,
    );
  }

  static TextStyle style8({required BuildContext context}) {
    return TextStyle(
      fontSize: MediaQuery.of(context).size.width * 0.03,
    );
  }
}
