import 'dart:ui';

import 'package:caleb_g/app/auth/presntation/widgets/RigsterBoody.dart';
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class rigster extends StatefulWidget {
  const rigster({super.key});

  @override
  State<rigster> createState() => _rigsterState();
}

class _rigsterState extends State<rigster> {
  String? email, password;

  bool isLoding = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.kMainColor,
      body: ScrollConfiguration(
        behavior: MyBehavior(),
        child: RigsterBoody(size: size),
      ),
    );
  }
}


class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
