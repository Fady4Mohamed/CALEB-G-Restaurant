import 'package:bloc/bloc.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
part 'fetch_food_state.dart';

class FetchFoodCubit extends Cubit<FetchFoodState> {
  FetchFoodCubit() : super(FetchFoodInitial());
  List<FoodModel> allfoodlist = [];
  List<FoodModel> onlyfoodlist = [];
  List<FoodModel> onlydrinklist = [];
  getallfood() async {
    emit(FetchFoodloding());
    print('llllllllllllloding');
    try {
  QuerySnapshot data =
      await FirebaseFirestore.instance.collection('food').get();
  for (int v = 0; v < data.docs.length; v++) {
    allfoodlist.add(FoodModel.fromjason(data.docs[v]));
    if (data.docs[v]['category']=='food') {
      onlyfoodlist.add(FoodModel.fromjason(data.docs[v]));
    }else{
       onlydrinklist.add(FoodModel.fromjason(data.docs[v]));
    }
    
  }
  emit(FetchFoodsuccsed());
} on Exception catch (e) {
  emit(FetchFoodfailer(e.toString()));
  print(e.toString());
}
    
  }
}
