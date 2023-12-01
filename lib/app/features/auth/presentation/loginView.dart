import 'package:caleb_g/app/features/auth/presentation/widgets/logincontanre.dart';
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
                  child:Image.asset('assats/image/Food,_vegetables_and_fruits_with_FA4A0C_color_background (2).png',fit: BoxFit.cover,),
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
