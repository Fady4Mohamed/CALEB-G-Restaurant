import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartData extends StatefulWidget {
  const CartData({
    super.key,
    required this.size,
    required this.food,
    required this.index,
  });
  final FoodModel food;
  final Size size;
  final int index;

  @override
  State<CartData> createState() => _CartDataState();
}

class _CartDataState extends State<CartData> {
  late int amount;
  @override
  Widget build(BuildContext context) {
    amount = BlocProvider.of<AddToCartCubit>(context)
        .amountlist
        .elementAt(widget.index);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
            width: widget.size.width * .4,
            child: Text(
              widget.food.name,
              style: style.style22(context: context),
            )),
        SizedBox(
          width: widget.size.width * .4,
          child: Row(
            children: [
              SizedBox(
                width: widget.size.width * .23,
                child: Text(
                  'GHS ${(widget.food.price * amount).toString()}',
                  style: style
                      .style17(context: context)
                      .copyWith(color: AppColors.kMainColor),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40), color: Colors.red),
                child: Padding(
                  padding: EdgeInsets.all(widget.size.width * .015),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          amount++;
                          BlocProvider.of<AddToCartCubit>(context).salary +=
                              widget.food.price;
                          BlocProvider.of<AddToCartCubit>(context)
                              .amountlist[widget.index] = amount;
                          BlocProvider.of<AddToCartCubit>(context).refresh();
                          setState(() {});
                        },
                        child: Icon(FontAwesomeIcons.plus,
                            size: widget.size.width * .04),
                      ),
                      Text(
                        ' ${amount} ',
                        style: style.style12(context: context),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (amount > 1) {
                            amount--;
                            BlocProvider.of<AddToCartCubit>(context).salary -=
                                widget.food.price;
                            BlocProvider.of<AddToCartCubit>(context)
                                .amountlist[widget.index] = amount;
                            BlocProvider.of<AddToCartCubit>(context).refresh();
                            setState(() {});
                          }
                        },
                        child: Icon(FontAwesomeIcons.minus,
                            size: widget.size.width * .04),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
