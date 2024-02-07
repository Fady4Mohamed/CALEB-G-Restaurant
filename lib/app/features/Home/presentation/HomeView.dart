

import 'package:caleb_g/app/features/Home/presentation/DrawerView.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/HomeViewAnimatContainer.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Stack(
            children: [
               DrawerView(),
              HomeViewAnimatContainer(size: size),
             
            ],
          ),
        ),
      ),
    );
  }
}
