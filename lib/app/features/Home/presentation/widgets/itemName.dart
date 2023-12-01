
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class itemName extends StatelessWidget {
  const itemName({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:  size.width*.3,
      child: Text('Veggie tomato mix',style: style.style22(context: context),textAlign: TextAlign.center,),
    );
  }
}