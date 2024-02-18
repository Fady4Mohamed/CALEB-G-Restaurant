import 'package:bloc/bloc.dart';
import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'getfavorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit() : super(FavoriteInitial());
  String username = UserDataInformationCubit.sname!;
  List<FoodModel> foodlist = [];

  getfavorite() async {
    foodlist.clear();
    emit(Favoriteloding());
    try {
      QuerySnapshot data =
          await FirebaseFirestore.instance.collection('${username}favorite').get();
      for (int v = 0; v < data.docs.length; v++) {
        foodlist.add(FoodModel.fromjason(await FirebaseFirestore.instance
            .collection('food')
            .doc(data.docs[v]['foodid'])
            .get()));
      }
      emit(Favoritesuccess());
    } on Exception catch (e) {
      emit(Favoritefailure(error: e.toString()));
      print(e.toString());
    }
  }
  
  


}
