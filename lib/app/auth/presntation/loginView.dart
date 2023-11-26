
import 'package:caleb_g/app/auth/presntation/widgets/SplashBackground.dart';
import 'package:caleb_g/app/auth/presntation/widgets/logincontanre.dart';
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';


class loginView extends StatelessWidget {
  const loginView({super.key});

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
               const logincontaner(),
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
