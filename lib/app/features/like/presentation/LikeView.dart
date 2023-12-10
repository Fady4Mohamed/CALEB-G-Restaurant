
import 'package:caleb_g/app/features/like/presentation/widgets/LikeAppBar.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/LikeContainer.dart';
import 'package:flutter/material.dart';

class LikeView
 extends StatelessWidget {
  const LikeView
  ({super.key});
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(children: [
         LikeAppBar(size: size),
         SizedBox(height: size.height*.05,),
          
           Expanded(
             child: ListView.builder(
                padding: EdgeInsets.only(bottom:20),
                itemCount: 12,
                  itemBuilder: (BuildContext contex, int i) {
                      return Padding(
                        padding:  EdgeInsets.only(top: 15,right:size.width *.1,left: size.width *.1 ),
                        child: LikeContainer(size: size),
                      );
                  },
                ),
           )
      ],),
    );
  }
}

