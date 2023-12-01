
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class itemprice extends StatelessWidget {
  const itemprice({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical:size.height*.02 ),
      child: Text('N1,900',style: style.style14(context: context).copyWith(color: AppColors.kMainColor),),
    );
  }
}