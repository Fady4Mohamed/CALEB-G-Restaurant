import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({super.key});

  @override
  State<DrawerView> createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kMainColor,
      child: Column(
        children: [
          Row(),
          
        ],
      ),
    );
  }
}