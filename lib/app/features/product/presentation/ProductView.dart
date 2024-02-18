import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:caleb_g/app/features/product/presentation/widgets/Productinfo.dart';
import 'package:caleb_g/app/features/product/presentation/widgets/productappbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key, required this.food});
  final FoodModel food;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              productappbar(size: size,food: food),
              Productinfo(
                size: size,
                food: food,
              ),
              Spacer(),
              CustomeButton(
                size: size,
                onPressed: () {
                  BlocProvider.of<AddToCartCubit>(context).cartinapp.add(food);
                  BlocProvider.of<AddToCartCubit>(context).amountlist.add(1);
                },
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
