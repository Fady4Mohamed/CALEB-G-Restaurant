import 'package:caleb_g/app/Home/presntation/widgets/drawerButton.dart';
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerView extends StatelessWidget {
  const DrawerView({super.key});

  @override
  Widget build(BuildContext context) {
    
    Size size = MediaQuery.of(context).size;
    return Container(
      color: AppColors.kMainColor,
      child: Column(
        children: [
          SizedBox(height: size.height*0.25,),
          CustomDrawerButton(size: size,icon: Icons.account_circle_outlined,name: 'Profile'),
          Line(size: size),
         CustomDrawerButton(size: size, icon: Icons.shopping_cart_checkout_rounded, name: 'orders'),
         Line(size: size),
         CustomDrawerButton(size: size, icon: Icons.local_offer, name: 'offer and promo'),
         Line(size: size),
         CustomDrawerButton(size: size, icon: FontAwesomeIcons.noteSticky, name: 'Privacy policy'),
         Line(size: size),
         CustomDrawerButton(size: size, icon: FontAwesomeIcons.shieldHalved, name: 'Security')
          
        ],
      ),
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: size.width*.1,right:size.width*.6 , top: size.height*.02,bottom: size.height*.02),
      child: Divider(color: Color.fromARGB(255, 202, 202, 202),thickness: .5,),
    );
  }
}
