import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartAppBar.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartGuidetext.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/Cartlistt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => AddToCartCubit(),
      child: Scaffold(
        body: Column(
          children: [
            CartAppBar(size: size),
            CartGuidetext(size: size),
            SizedBox(
              height: size.height * 0.01,
            ),
            CartList(size: size),
            CustomeButton(
              size: size,
              onPressed: () {},
              titel: 'Complete order',
              color: AppColors.kMainColor,
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
          ],
        ),
      ),
    );
  }
}
