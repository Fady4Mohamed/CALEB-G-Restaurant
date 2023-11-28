import 'package:caleb_g/app/Home/presntation/widgets/listitem.dart';
import 'package:flutter/material.dart';

class tabs extends StatelessWidget {
  const tabs({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // tab view height
      height: size.height * 0.43,
      child: TabBarView(
        children: [
      listitem(size: size),
       SizedBox(),
       SizedBox(),
      ]),
    );
  }
}