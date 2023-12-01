import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class productappbar extends StatelessWidget {
  const productappbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: size.height * 0.04,
        right: size.width * 0.03,
        left: size.width * 0.03,
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.chevron_left,
                size: 40,
              )),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(FontAwesomeIcons.heart))
        ],
      ),
    );
  }
}
