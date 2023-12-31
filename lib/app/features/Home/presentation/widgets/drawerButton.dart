import 'package:flutter/material.dart';

import 'package:caleb_g/app/core/Styles/text_Style.dart';

class CustomDrawerButton extends StatelessWidget {
  const CustomDrawerButton({
    super.key,
    required this.size,
    required this.icon,
    required this.name,
    this.onTap,
  });
  final IconData icon;
  final String name;
  final Size size;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .03, right: size.width * .02),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Text(
            name,
            style: style.style17b(context: context),
          ),
        ],
      ),
    );
  }
}
