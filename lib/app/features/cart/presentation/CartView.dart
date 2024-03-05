import 'package:caleb_g/app/core/strip%20payment/manager/cubit/payment_cubit.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartAppBar.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartGuidetext.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/Cartlistt.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/cartButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          SizedBox(
            height: size.height * 0.01,
          ),
          CartList(size: size),
          BlocProvider(
            create: (context) => PaymentCubit(),
            child: cartButton(
              size: size,
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
        ],
      ),
    );
  }
}
