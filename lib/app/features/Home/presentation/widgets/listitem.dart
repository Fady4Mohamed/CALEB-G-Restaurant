

import 'package:caleb_g/app/features/Home/presentation/widgets/ItemContainer.dart';
import 'package:flutter/material.dart';

class listitem extends StatelessWidget {
  const listitem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.43 ,
      child: ListView.builder(
       scrollDirection: Axis.horizontal,
        itemBuilder:(BuildContext contex,int i){
          return Padding(
            padding:  EdgeInsets.only(left: 24.0,top: size.height * 0.02),
            child: ItemContainer(size: size),
          );
        } ,
      ),
    );
  }
}
