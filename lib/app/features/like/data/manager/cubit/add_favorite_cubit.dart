import 'package:bloc/bloc.dart';
import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'add_favorite_state.dart';

class AddFavoriteCubit extends Cubit<AddFavoriteState> {
  AddFavoriteCubit() : super(AddFavoriteInitial());
   String username =UserDataInformationCubit.sname!;
      Future<void> addfavorite({required String foodid}) async {
    emit(AddFavoriteloding());
    DocumentReference cart = FirebaseFirestore.instance.collection('${username}favorite').doc();
    cart.set({
      'foodid': foodid,
    }).then((value) {
     emit(AddFavoritesuccess());
    })  // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
      emit(AddFavoritefailure(error: error.toString()));
    });
  }
}
