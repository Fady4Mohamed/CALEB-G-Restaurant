import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/card/presentation/widgets/CartAppBar.dart';
import 'package:caleb_g/app/features/card/presentation/widgets/CartContainer.dart';
import 'package:caleb_g/app/features/card/presentation/widgets/CartGuidetext.dart';
import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
         CartAppBar(size: size),
         CartGuidetext(size: size),
         SizedBox(height: size.height*0.01,),
         Expanded(
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
         CustomeButton(size: size, onPressed: (){}, titel: 'Complete order',color: AppColors.kMainColor,),
         SizedBox(height: size.height*0.04,),
        ],
      ),
    );
  }
}
