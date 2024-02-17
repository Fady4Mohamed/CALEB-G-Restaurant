
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/History/data/manger/cubit/order_histroy_cubit.dart';
import 'package:caleb_g/app/features/Search/presentation/widgets/SearchItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HasHistoryBoody extends StatefulWidget {
  const HasHistoryBoody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<HasHistoryBoody> createState() => _HasHistoryBoodyState();
}

class _HasHistoryBoodyState extends State<HasHistoryBoody> {
  List <FoodModel> food=[];
  @override
  void initState() {
    food.addAll(BlocProvider.of<OrderHistroyCubit>(context).foodlist);
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Expanded(
            child: GridView.builder(
                itemCount: food.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    mainAxisExtent:widget. size.height * .3,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext contex, int i) {
                  return Padding(
                    padding: EdgeInsets.only(left:widget. size.width * .06),
                    child: SearchItem(size:widget. size, food: food[i]),
                  );
                }),
          );
  }
}
