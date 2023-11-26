import 'dart:ui';

import 'package:caleb_g/app/auth/presntation/widgets/SplashBackground.dart';
import 'package:caleb_g/app/auth/presntation/widgets/ncostombutton.dart';
import 'package:caleb_g/app/auth/presntation/widgets/ncustomtextfield.dart';
import 'package:caleb_g/app/auth/presntation/widgets/textontap.dart';
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
        child: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                SizedBox(
                  height: size.height,
                  child: SplashBackground(size: size,height: 0.85),
                ),
                Center(
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
                            filter: ImageFilter.blur(sigmaY: 25, sigmaX: 25),
                            child: SizedBox(
                              width: size.width * .9,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: size.width * .15,
                                      bottom: size.width * .1,
                                    ),
                                    child: Text(
                                      'RIGSTER',
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white.withOpacity(.8),
                                      ),
                                    ),
                                  ),
                                  component(
                                    icon: Icons.email_outlined,
                                    hintText: 'Email...',
                                    onchanged: (p0) {
                                      email = p0;
                                    },
                                  ),
                                  component(
                                    icon: Icons.lock_outline,
                                    hintText: 'Password...',
                                    isPassword: true,
                                    onchanged: (p0) {
                                      password = p0;
                                    },
                                  ),
                                  textontap(
                                    titel: 'you have an account',
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  SizedBox(height: size.width * .25),
                                  ncustombutton(
                                    titel: 'regist',
                                    onTap: () {
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
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
