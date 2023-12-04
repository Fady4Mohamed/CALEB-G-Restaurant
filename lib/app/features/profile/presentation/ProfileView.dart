import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/profile/presentation/widgets/ProfileAppBar.dart';
import 'package:caleb_g/app/features/profile/presentation/widgets/ProfileInformBox.dart';
import 'package:caleb_g/app/features/profile/presentation/widgets/ProfilePayMethod.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ProfileAppBar(size: size),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .1,
                top: size.height * .02,
                bottom: size.height * .01),
            child: Text(
              'Information',
              style: style.style17(context: context),
            ),
          ),
          ProfileInformBox(size: size),
          SizedBox(
            height: size.height * .1,
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * .1, bottom: size.height * .01),
            child: Text(
              'Payment Method',
              style: style.style17(context: context),
            ),
          ),
          ProfilePayMethod(size: size),
          Spacer(),
          Row(
            children: [
              Spacer(),
              CustomeButton(
                size: size,
                onPressed: () {},
                titel: 'Update Information',
                color: AppColors.kMainColor,
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: size.height * .04,
          )
        ],
      ),
    );
  }
}
