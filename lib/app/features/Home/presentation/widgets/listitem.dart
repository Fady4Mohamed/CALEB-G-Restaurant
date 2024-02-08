import 'package:caleb_g/app/core/manager/data/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/Home/presentation/widgets/ItemContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listitem extends StatefulWidget {
  const listitem({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<listitem> createState() => _listitemState();
}

class _listitemState extends State<listitem> {
  late List<FoodModel> food;
  @override
  void initState() {
    food = BlocProvider.of<FetchFoodCubit>(context).allfoodlist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.size.height * 0.43,
      child: ListView.builder(
        itemCount: food.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext contex, int i) {
          return Padding(
            padding:
                EdgeInsets.only(left: 24.0, top: widget.size.height * 0.02),
            child: ItemContainer(
              size: widget.size,
              food: food[i],
            ),
          );
        },
      ),
    );
  }
}
