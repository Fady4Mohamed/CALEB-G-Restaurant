import 'package:caleb_g/app/features/card/presentation/widgets/CartData.dart';
import 'package:caleb_g/app/features/card/presentation/widgets/CartImage.dart';
import 'package:flutter/material.dart';
class CartContainer extends StatelessWidget {
  const CartContainer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          CartImage(size: size),
          Spacer(),
          CartData(size: size),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
