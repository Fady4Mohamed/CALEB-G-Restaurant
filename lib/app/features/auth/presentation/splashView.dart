import 'package:caleb_g/app/features/auth/presentation/widgets/SplashBackground.dart';
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class splashView extends StatelessWidget {
  const splashView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.kMainColor,
      body: Stack(
        children: [
          SplashBackground(size: size,height: 0.55),
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
              CustomeButton(size: size,onPressed: (){
                GoRouter.of(context).push(AppRouter.kloginView);
              },titel: 'Get starteed'),
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