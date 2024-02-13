

import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class CartGuidetext extends StatelessWidget {
  const CartGuidetext({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Spacer(),
       Image.asset('assats/image/iwwa_swipe.png',height: size.height*.05,),
       Text('swipe on an item to delete',style: style.style12(context: context),),
       Spacer()
    
     ],
    );
  }
}