import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartData.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartImage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartContainer extends StatelessWidget {
  const CartContainer({
    super.key,
    required this.size,
    required this.food,
    required this.index,
  });
  final int index;
  final FoodModel food;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            borderRadius: BorderRadius.circular(
                20), // An action can be bigger than the others.
            flex: 10,
            onPressed: (r) {},
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: FontAwesomeIcons.heart,
          ),
          SlidableAction(
            // An action can be bigger than the others.
            flex: 1,
            onPressed: (r) {},
            foregroundColor: Color(0xffF2F2F2),
            backgroundColor: Color(0xffF2F2F2),
            icon: FontAwesomeIcons.a,
          ),
          SlidableAction(
            flex: 10,
            borderRadius: BorderRadius.circular(20),
            onPressed: (k) {
              BlocProvider.of<AddToCartCubit>(context).salary -=
                  (BlocProvider.of<AddToCartCubit>(context).amountlist[index] *
                      BlocProvider.of<AddToCartCubit>(context)
                          .cartinapp[index]
                          .price);
              BlocProvider.of<AddToCartCubit>(context)
                  .amountlist
                  .insert(index, 1);
              BlocProvider.of<AddToCartCubit>(context)
                  .cartinapp
                  .removeAt(index);
              BlocProvider.of<AddToCartCubit>(context).refresh();
            },
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            icon: FontAwesomeIcons.solidTrashCan,
          ),
          SlidableAction(
            // An action can be bigger than the others.
            flex: 1,
            onPressed: (r) {},
            foregroundColor: Color(0xffF2F2F2),
            backgroundColor: Color(0xffF2F2F2),
            icon: FontAwesomeIcons.a,
          ),
        ],
      ),
      child: Container(
        width: size.width * .8,
        height: size.height * .13,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // Color of the shadow
            spreadRadius: 2, // Spread radius
            blurRadius: 20,
          ),
        ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            CartImage(size: size, food: food),
            Spacer(),
            CartData(size: size, food: food, index: index),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
