
import 'dart:ui';

import 'package:caleb_g/app/auth/presntation/widgets/LoginContant.dart';
import 'package:flutter/material.dart';

class logincontaner extends StatelessWidget {
  const logincontaner({
    super.key
  });

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Expanded(
            child: SizedBox(),
          ),
          Expanded(
            flex: 7,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaY: 30, sigmaX: 30),
                child: SizedBox(
                  width: size.width * .9,
                  child: LoginContant(size: size),
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
