import 'package:caleb_g/auth/presntation/widgets/SplashBackground.dart';
import 'package:caleb_g/core/Styles/App_Colors.dart';
import 'package:caleb_g/core/Styles/text_Style.dart';
import 'package:caleb_g/core/widgets/customeButton.dart';
import 'package:flutter/material.dart';

class splashView extends StatelessWidget {
  const splashView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.kMainColor,
      body: Stack(
        children: [
          SplashBackground(size: size),
           Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top:size.height*.06,left: size.width*.1 ),
                child: Text('CALEB G Restaurant',style:style.style50(context: context) ,),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomeButton(size: size),
              SizedBox(
                width: double.infinity,
                height: size.height * .04,
              )
            ],
          )
        ],
      ),
    );
  }
}