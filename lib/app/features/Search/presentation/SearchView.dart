

import 'package:caleb_g/app/features/Search/presentation/widgets/SearchAppBar.dart';
import 'package:caleb_g/app/features/Search/presentation/widgets/SearchBar.dart';
import 'package:caleb_g/app/features/Search/presentation/widgets/SearchItem.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SearchAppBar(size: size), 
         MYSearchBar(onchanged: (data){},),
         Expanded(
           child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
           itemBuilder: (BuildContext contex,int i){
            return  SearchItem(size: size);
                   } ),
         )
          
        ],
      ),
    );
  }
}