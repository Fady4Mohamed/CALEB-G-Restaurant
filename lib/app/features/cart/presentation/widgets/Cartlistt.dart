
import 'package:caleb_g/app/features/cart/presentation/widgets/CartContainer.dart';
import 'package:flutter/material.dart';

class CartList extends StatelessWidget {
  const CartList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(left: size.width*.1),
        child: ListView.builder(
              padding: EdgeInsets.only(bottom:20),
              itemCount: 4,
                itemBuilder: (BuildContext contex, int i) {
         return Center(child: Padding(
           padding: const EdgeInsets.all(8.0),
           child:CartContainer(size: size),
         ));
                },
              ),
      ),
    );
  }
}
