
import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: size.width * .1,
          right: size.width * .6,
          top: size.height * .02,
          bottom: size.height * .02),
      child: Divider(
        color: Color.fromARGB(255, 202, 202, 202),
        thickness: .5,
      ),
    );
  }
}
