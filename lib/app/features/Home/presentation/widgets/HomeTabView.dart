import 'package:caleb_g/app/features/Home/presentation/widgets/tabs.dart';
import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/Styles/text_Style.dart';
import 'package:flutter/material.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelStyle: style.style17(context: context),
            dividerHeight:0 ,
            indicatorColor:AppColors.kMainColor ,
            indicatorWeight: 4,
             tabAlignment: TabAlignment.center,
            labelColor: AppColors.kMainColor,
            unselectedLabelColor: Color(0xff9A9A9D),
            tabs: const [
              Tab(text: 'All'),
              Tab(text: 'Foods'),
              Tab(text: 'Drinks'),
            ],
          ),
          tabs(size: size),
        ],
      ),
    );
  }
}