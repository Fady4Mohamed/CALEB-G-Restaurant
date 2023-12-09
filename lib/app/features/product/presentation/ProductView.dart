import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/product/presentation/widgets/Productinfo.dart';
import 'package:caleb_g/app/features/product/presentation/widgets/productappbar.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              productappbar(size: size),
              Productinfo(size: size),
              Spacer(),
              CustomeButton(
                size: size,
                onPressed: () {},
                titel: 'Add to cart',
                color: AppColors.kMainColor,
              ),
              SizedBox(
                height: size.height * .02,
              )
            ],
          ),
        ),
      ),
    );
  }
}
