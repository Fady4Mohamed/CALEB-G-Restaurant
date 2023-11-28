
import 'package:flutter/material.dart';

class HomeTop extends StatelessWidget {
  const HomeTop({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:size.width*0.02),
      child: Row(
        children: [
          IconButton(onPressed: 
          (){}, icon: Icon(Icons.density_medium)),
          Spacer(),
          IconButton(onPressed: 
          (){}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}