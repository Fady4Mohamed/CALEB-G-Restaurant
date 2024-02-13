
import 'package:caleb_g/app/features/Home/presentation/widgets/Line.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/drawerButton.dart';
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.kMainColor,
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.25,
          ),
          CustomDrawerButton(
              size: size,
              icon: Icons.account_circle_outlined,
              name: 'Profile',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kProfileView);
              }),
          Line(size: size),
          CustomDrawerButton(
            size: size,
            icon: Icons.shopping_cart_checkout_rounded,
            name: 'orders',
            onTap: () {
              GoRouter.of(context).push(AppRouter.kCartView);
            },
          ),
          Line(size: size),
          CustomDrawerButton(
              size: size, icon: Icons.local_offer, name: 'offer and promo'),
          Line(size: size),
          CustomDrawerButton(
            size: size,
            icon: FontAwesomeIcons.noteSticky,
            name: 'Privacy policy',
          ),
          Line(size: size),
          CustomDrawerButton(
              size: size,
              icon: FontAwesomeIcons.shieldHalved,
              name: 'Security'),
          SizedBox(
            height: size.height * 0.2,
          ),
          CustomDrawerButton(
            size: size,
            icon: FontAwesomeIcons.arrowLeft,
            name: 'Sign-out',
            onTap: () async {
              await FirebaseAuth.instance.signOut();
              GoRouter.of(context).go(AppRouter.ksplashView);
            },
          ),
        ],
      ),
    );
  }
}
