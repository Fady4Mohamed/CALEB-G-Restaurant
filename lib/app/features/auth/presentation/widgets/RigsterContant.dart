
import 'package:flutter/material.dart';

import 'package:caleb_g/app/features/auth/presentation/widgets/ncostombutton.dart';
import 'package:caleb_g/app/core/widgets/ncustomtextfield.dart';
import 'package:caleb_g/app/features/auth/presentation/widgets/textontap.dart';

class RigsterContant extends StatelessWidget {
  const RigsterContant({
    super.key,
    required this.size, this.onchangedemali, this.onchangedpassword, this.onTap,
  });
  final void Function(String)? onchangedemali;
  final void Function(String)? onchangedpassword;
  final void Function()? onTap;
  final Size size;

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
            'RIGSTER',
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
          onchanged: onchangedemali,
        ),
        ncustomtextfield(
          icon: Icons.lock_outline,
          hintText: 'Password...',
          isPassword: true,
          onchanged:onchangedpassword,
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
          onTap: onTap,
        ),
      ],
    );
  }
}
