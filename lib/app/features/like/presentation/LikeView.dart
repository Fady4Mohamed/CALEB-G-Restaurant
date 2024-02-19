import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/like/data/manager/cubit/getfavorite_cubit.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/LikeAppBar.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/likeListe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LikeView extends StatelessWidget {
  const LikeView({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<FavoriteCubit>(context).getfavorite();
    List<FoodModel> food = [];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          LikeAppBar(size: size),
          SizedBox(
            height: size.height * .05,
          ),
          Expanded(
            child: BlocBuilder<FavoriteCubit, FavoriteState>(
              builder: (context, state) {
                if (state is Favoritesuccess) {
                  food.addAll(BlocProvider.of<FavoriteCubit>(context).foodlist);
                  return food.isEmpty
                      ? Text('no favorite yet')
                      : likeListe(food: food, size: size);
                } else if (state is Favoritefailure) {
                  Fluttertoast.showToast(
                      msg: state.error,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                  return const SizedBox();
                } else {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Transform.scale(
                            scale: 0.8,
                            child: const CircularProgressIndicator(
                                color: AppColors.kMainColor),
                          ),
                        ),
                      ]);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
