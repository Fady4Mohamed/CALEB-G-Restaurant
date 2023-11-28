import 'dart:ui';

import 'package:caleb_g/app/auth/presntation/widgets/RigsterContant.dart';
import 'package:caleb_g/app/auth/presntation/widgets/SplashBackground.dart';
import 'package:flutter/material.dart';

class RigsterBoody extends StatelessWidget {
  const RigsterBoody({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                          child: RigsterContant(size: size),
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
    );
  }
}
