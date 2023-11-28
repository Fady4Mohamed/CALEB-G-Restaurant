
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.size,
  });

  final Size size;
  

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
       
        Padding(
          padding:  EdgeInsets.only(top: size.height*.06),
          child: Container(
            height: size.height*.3,
            width: size.width*.5,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Color(0xffFFFFFF)),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width:  size.width*.3,
                child: Text('Veggie tomato mix',style: style.style22(context: context),textAlign: TextAlign.center,),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(vertical:size.height*.02 ),
                child: Text('N1,900',style: style.style14(context: context).copyWith(color: AppColors.kMainColor),),
              ),
            ],
           ),
          ),
        ),
         Padding(
           padding:  EdgeInsets.only(left:( (size.width*.5)/2)-size.height*.09),
           child: CircleAvatar(radius:size.height*.09,foregroundImage: AssetImage('assats/image/ahlylogo.png',),),
         ),
      ],
    );
  }
}