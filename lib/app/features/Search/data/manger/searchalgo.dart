import 'package:caleb_g/app/core/manager/data/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search{

 static List<FoodModel> searchAlgorethem(String foodname,BuildContext context){

 List<FoodModel> food= BlocProvider.of<FetchFoodCubit>(context).allfoodlist;
  List<FoodModel> searhedfood=[];
  for(int i=0;i<food.length;i++){
    if(food[i].name.toLowerCase().contains(foodname.toLowerCase())){
      searhedfood.add(food[i]);
    }

  }
 return searhedfood;
  }
}