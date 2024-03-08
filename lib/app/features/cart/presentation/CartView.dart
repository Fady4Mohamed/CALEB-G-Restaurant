import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/strip%20payment/manager/cubit/payment_cubit.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartAppBar.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartGuidetext.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/Cartlistt.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/cartButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
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
          BlocListener<AddToCartCubit, AddToCartState>(
            listener: (context, state) {
              if(state is AddToCartflagetrue){
                setState(() {
                  
                });
              }
            },
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'GHS ${BlocProvider.of<AddToCartCubit>(context).salary}',
                  style: style.style17(context: context),
                )),
          ),
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
