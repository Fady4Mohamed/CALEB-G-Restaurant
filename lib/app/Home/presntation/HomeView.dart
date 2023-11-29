import 'package:caleb_g/app/Home/presntation/widgets/HomeNavigationBar.dart';
import 'package:caleb_g/app/Home/presntation/widgets/HomeTabView.dart';
import 'package:caleb_g/app/Home/presntation/widgets/HomeTitel.dart';
import 'package:caleb_g/app/Home/presntation/widgets/HomeTop.dart';
import 'package:caleb_g/app/Home/presntation/widgets/searchbutton.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: size.height * .04,
          ),
          HomeTop(size: size),
          SizedBox(
            height: size.height * .04,
          ),
          HomeTitel(size: size),
          Spacer(),
          searchbutton(size: size),
          HomeTabView(size: size),
          Spacer(),
          HomeNavigationBar(size: size),
        ],
      ),
    );
  }
}
