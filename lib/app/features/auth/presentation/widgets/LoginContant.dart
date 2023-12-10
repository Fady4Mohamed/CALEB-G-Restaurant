
import 'package:caleb_g/app/features/auth/presentation/widgets/googelconfirm.dart';
import 'package:caleb_g/app/features/auth/presentation/widgets/ncostombutton.dart';
import 'package:caleb_g/app/core/widgets/ncustomtextfield.dart';
import 'package:caleb_g/app/features/auth/presentation/widgets/textontap.dart';
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';


class LoginContant extends StatelessWidget {
  const LoginContant({
    super.key,
    required this.size, this.onTap, this.onchangedemali, this.onchangedpassword,
  });
  final void Function()? onTap;
  final Size size;
  final void Function(String)? onchangedemali;
  final void Function(String)? onchangedpassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: size.width * .15,
            bottom: size.width * .1,
          ),
          child: Text(
            'SIGN IN',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.white.withOpacity(.8),
            ),
          ),
        ),
        ncustomtextfield(
          icon: Icons.email_outlined,
          hintText: 'Email...',
          onchanged:onchangedemali,
        ),
        ncustomtextfield(
          icon: Icons.lock_outline,
          hintText: 'Password...',
          isPassword: true,
          onchanged:onchangedpassword ,
        ),
        textontap(
          titel: 'create a new Account',
          onTap: () {
            GoRouter.of(context).push(AppRouter.kRigsterView);
          },
        ),
        googelconfirm(),
      SizedBox(
        height: size.height*0.02,
      ),
        ncustombutton(titel: 'login',onTap: onTap,),
      ],
    );
  }
}