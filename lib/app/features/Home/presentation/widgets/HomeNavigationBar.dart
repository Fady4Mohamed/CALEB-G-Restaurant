
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeNavigationBar extends StatelessWidget {
  const HomeNavigationBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: size.width * .08,
          right: size.width * .08,
          bottom: size.height * .03),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color: AppColors.kMainColor,
                size: 35,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.heart,
                  color: Colors.grey, size: 25),
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.user,
                  color: Colors.grey, size: 25),
            ),
            IconButton(
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kHistoryView);
              },
              icon: Icon(
                Icons.restore,
                color: Colors.grey,
                size: 35,
              ),
            ),
          ]),
    );
  }
}
