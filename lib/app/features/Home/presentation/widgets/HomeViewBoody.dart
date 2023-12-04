import 'package:caleb_g/app/features/Home/presentation/widgets/HomeNavigationBar.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/HomeTabView.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/HomeTitel.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/HomeTop.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/searchbutton.dart';
import 'package:flutter/material.dart';

class HomeViewBoody extends StatefulWidget {
  const HomeViewBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<HomeViewBoody> createState() => _HomeViewBoodyState();
}

class _HomeViewBoodyState extends State<HomeViewBoody> {
  double x = 0;
  double y = 0;
  double scale = 1;
  double borderRadius = 0;
  bool indrawer = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Color(0xffF2F2F2),
      ),
      transform: Matrix4.translationValues(x, y, 0)..scale(scale),
      duration: Duration(milliseconds: 300),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: widget.size.height * .04,
          ),
          HomeTop(
            size: widget.size,
            draweronPressed: () {
              if (indrawer) {
                setState(() {
                  x = 0;
                  y = 0;
                  scale = 1;
                  borderRadius = 0;
                  indrawer = false;
                });
              } else {
                setState(() {
                  x = 220;
                  y = 120;
                  scale = 0.7;
                  borderRadius = 40;
                  indrawer = true;
                });
              }
            },
          ),
          SizedBox(
            height: widget.size.height * .04,
          ),
          HomeTitel(size: widget.size),
          Spacer(),
          searchbutton(size: widget.size),
          HomeTabView(size: widget.size),
          Spacer(),
          HomeNavigationBar(size: widget.size),
        ],
      ),
    );
  }
}