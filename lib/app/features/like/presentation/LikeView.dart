import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/like/data/manager/cubit/getfavorite_cubit.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/LikeAppBar.dart';
import 'package:caleb_g/app/features/like/presentation/widgets/LikeContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  return ListView.builder(
                    padding: EdgeInsets.only(bottom: 20),
                    itemCount: food.length,
                    itemBuilder: (BuildContext contex, int i) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: 15,
                            right: size.width * .1,
                            left: size.width * .1),
                        child: LikeContainer(size: size, food: food[i]),
                      );
                    },
                  );
                } else {
                  return Text('loding. . .');
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
