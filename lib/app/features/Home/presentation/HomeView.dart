import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:caleb_g/app/features/Home/presentation/DrawerView.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/HomeViewAnimatContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<UserDataInformationCubit>(context).getuser();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
    );
  }
}
