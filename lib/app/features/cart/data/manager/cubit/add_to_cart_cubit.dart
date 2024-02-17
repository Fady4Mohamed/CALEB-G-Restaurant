import 'package:bloc/bloc.dart';
import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'add_to_cart_state.dart';

class AddToCartCubit extends Cubit<AddToCartState> {
  AddToCartCubit() : super(AddToCartInitial());
   String username =UserDataInformationCubit.sname!;
   List<FoodModel> cartinapp=[];
   List<int> amountlist=[];
    Future<void> completeOrder({required String foodid,required int amount}) async {
    emit(AddToCartloding());
    DocumentReference cart = FirebaseFirestore.instance.collection('${username}cart').doc();
    cart.set({
      'amount': amount,
      'foodid': foodid,
    }).then((value) {
      emit(AddToCartsuccess());
    })  // ignore: invalid_return_type_for_catch_error
        .catchError((error) {
      emit(AddToCartfailure(error: error.toString()));
    });
  }
}
