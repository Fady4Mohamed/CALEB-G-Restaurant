import 'package:caleb_g/app/Home/presntation/widgets/HomeTitel.dart';
import 'package:caleb_g/app/Home/presntation/widgets/HomeTop.dart';
import 'package:caleb_g/app/core/widgets/ncustomtextfield.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:size.height*.04 ,),
          HomeTop(size: size),
          SizedBox(height:size.height*.04 ,),
          HomeTitel(size: size),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: size.width*.1,vertical:size.height*.03 ),
            child: ncustomtextfield(hintText:'Search',icon: Icons.search,iconColor: Colors.black, ),
          ),
          
        ],
      ),
    );
  }
}
