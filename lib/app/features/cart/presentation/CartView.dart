import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartAppBar.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartGuidetext.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/Cartlistt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
   Color buttoncolor = AppColors.kMainColor;
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
                  listener: (context, state) async {
                    if (state is AddToCartloding) {
                      buttoncolor = Colors.amber;
                      setState(() {
                        
                      });
                    }
                    if (state is AddToCartfailure) {
                      buttoncolor = const Color.fromARGB(255, 95, 10, 4);
                       setState(() {
                        
                      });
                      await Future.delayed(Duration(seconds: 2));
                      buttoncolor = AppColors.kMainColor;
                       setState(() {
                        
                      });
                    }
                    if (state is AddToCartsuccess) {
                      buttoncolor = Colors.green;
                       setState(() {
                        
                      });
                      await Future.delayed(Duration(seconds: 2));
                      buttoncolor = AppColors.kMainColor;
                       setState(() {
                        
                      });
                    }
                  },
                  child: CustomeButton(
                    size: size,
                    onPressed: () async {
                      BlocProvider.of<AddToCartCubit>(context).complet();
                    },
                    titel: 'add',
                    color: buttoncolor,
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
