
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:caleb_g/app/features/cart/presentation/widgets/CartContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartList extends StatefulWidget {
   CartList({
    super.key,
    required this.size,
  });
  final Size size;

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
   late List<FoodModel> foodlist;
 @override
  void initState() {
    foodlist=BlocProvider.of<AddToCartCubit>(context).cartinapp;
    print(foodlist.length);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(left: widget.size.width*.1),
        child: ListView.builder(
              padding: EdgeInsets.only(bottom:20),
              itemCount: foodlist.length,
                itemBuilder: (BuildContext contex, int i) {
         return Center(child: Padding(
           padding: const EdgeInsets.all(8.0),
           child:CartContainer(size: widget.size,food: foodlist[i],index: i),
         ));
                },
              ),
      ),
    );
  }
}
