import 'package:caleb_g/app/core/manager/data/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:caleb_g/app/features/Home/presentation/DrawerView.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/HomeViewAnimatContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => FetchFoodCubit()..getallfood(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            child: Stack(
              children: [
                DrawerView(),
                HomeViewAnimatContainer(size: size),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
