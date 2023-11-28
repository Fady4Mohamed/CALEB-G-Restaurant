
import 'package:caleb_g/app/auth/presntation/widgets/googelconfirm.dart';
import 'package:caleb_g/app/auth/presntation/widgets/ncostombutton.dart';
import 'package:caleb_g/app/core/widgets/ncustomtextfield.dart';
import 'package:caleb_g/app/auth/presntation/widgets/textontap.dart';
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';


class LoginContant extends StatefulWidget {
  const LoginContant({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<LoginContant> createState() => _LoginContantState();
}

String? password, email;
bool isLoding = false;

class _LoginContantState extends State<LoginContant> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: widget.size.width * .15,
            bottom: widget.size.width * .1,
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
          onchanged: (p0) {
            email = p0;
          },
        ),
        ncustomtextfield(
          icon: Icons.lock_outline,
          hintText: 'Password...',
          isPassword: true,
          onchanged: (p0) {
            password = p0;
          },
        ),
        textontap(
          titel: 'create a new Account',
          onTap: () {
            GoRouter.of(context).push(AppRouter.kRigsterView);
          },
        ),
        googelconfirm(),
      SizedBox(
        height: widget.size.height*0.02,
      ),
        ncustombutton(titel: 'login',onTap: () {
          GoRouter.of(context).push(AppRouter.kHomeView);
        },),
      ],
    );
  }
}