import 'package:caleb_g/app/core/manager/data/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/Search/data/manger/searchalgo.dart';
import 'package:caleb_g/app/features/Search/presentation/widgets/SearchAppBar.dart';
import 'package:caleb_g/app/features/Search/presentation/widgets/SearchBar.dart';
import 'package:caleb_g/app/features/Search/presentation/widgets/SearchItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  late List<FoodModel> foods;
  String? Searchname;
  @override
  void initState() {
    if (Searchname == null) {
      foods = BlocProvider.of<FetchFoodCubit>(context).allfoodlist;
    }

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SearchAppBar(size: size),
          MYSearchBar(
            onchanged: (data) {
              Searchname = data;
              foods = Search.searchAlgorethem(Searchname!, context);
              setState(() {
                
              });
            },
          ),
          Expanded(
            child: GridView.builder(
                itemCount: foods.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 8,
                    mainAxisExtent: size.height * .3,
                    crossAxisCount: 2),
                itemBuilder: (BuildContext contex, int i) {
                  return Padding(
                    padding: EdgeInsets.only(left: size.width * .06),
                    child: SearchItem(size: size, food: foods[i]),
                  );
                }),
          )
        ],
      ),
    );
  }
}
