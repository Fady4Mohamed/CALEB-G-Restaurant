

import 'package:caleb_g/app/Home/presntation/DrawerView.dart';
import 'package:caleb_g/app/Home/presntation/widgets/HomeViewBoody.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
           DrawerView(),
          HomeViewBoody(size: size),
         
        ],
      ),
    );
  }
}
