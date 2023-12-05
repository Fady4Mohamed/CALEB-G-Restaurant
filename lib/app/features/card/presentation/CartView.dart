import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/features/card/presentation/widgets/CartAppBar.dart';
import 'package:caleb_g/app/features/card/presentation/widgets/CartGuidetext.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
         CartAppBar(size: size),
         CartGuidetext(size: size),
         
        ],
      ),
    );
  }
}