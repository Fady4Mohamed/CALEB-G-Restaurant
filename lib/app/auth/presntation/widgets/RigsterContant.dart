
import 'package:flutter/material.dart';

import 'package:caleb_g/app/auth/presntation/widgets/ncostombutton.dart';
import 'package:caleb_g/app/core/widgets/ncustomtextfield.dart';
import 'package:caleb_g/app/auth/presntation/widgets/textontap.dart';

class RigsterContant extends StatelessWidget {
  const RigsterContant({
    super.key,
    required this.size,
  });

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
          onchanged: (p0) {
           
          },
        ),
        ncustomtextfield(
          icon: Icons.lock_outline,
          hintText: 'Password...',
          isPassword: true,
          onchanged: (p0) {
           
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
    );
  }
}
