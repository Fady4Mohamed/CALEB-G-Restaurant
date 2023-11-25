
import 'package:caleb_g/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class SplashBackground extends StatelessWidget {
  const SplashBackground({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assats/image/ToyFaces_Tansparent_BG_29.png',
              height: size.height * 0.4,
            ),
            SizedBox(
              width: size.width,
              height: size.height * 0.15,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assats/image/ToyFaces_Tansparent_BG_49.png',
              height: size.height * 0.55,
            ),
            SizedBox(
              height: size.height * 0.15,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assats/image/ToyFaces_Tansparent_BG_49.png',
              height: size.height * 0.55,
            ),
            SizedBox(
              height: size.height * 0.15,
            )
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.kMainColor.withOpacity(0.1),
                    AppColors.kMainColor.withOpacity(0.3),
                    AppColors.kMainColor.withOpacity(0.4),
                    AppColors.kMainColor.withOpacity(0.5),
                    AppColors.kMainColor.withOpacity(0.7),
                    AppColors.kMainColor,
                    AppColors.kMainColor
                  ],
                  end: Alignment.bottomCenter,
                  begin: Alignment.topCenter,
                ),
              ),
              height: size.height * 0.2,
              width: double.infinity,
            ),
            SizedBox(
              height: size.height * 0.15,
            )
          ],
        ),
      ],
    );
  }
}
