import 'package:bloc/bloc.dart';
import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/cart/data/model/cartModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'order_histroy_state.dart';

class OrderHistroyCubit extends Cubit<OrderHistroyState> {
  OrderHistroyCubit() : super(OrderHistroyInitial());
   String username =UserDataInformationCubit.sname!;
     List<FoodModel> foodlist = [];
     List<cartmodel> cartlist=[];
   getallfood() async {
    emit(OrderHistroyloding());
    try {
  QuerySnapshot data =
      await FirebaseFirestore.instance.collection('${username}cartHistory').get();
  for (int v = 0; v < data.docs.length; v++) {
    cartlist.add(cartmodel.fromjason(data.docs[v]));
    foodlist.add(FoodModel.fromjason( await FirebaseFirestore.instance.collection('food').doc(cartlist[v].foodid).get() ));
   
  }
  emit(OrderHistroysuccess());
} on Exception catch (e) {
  emit(OrderHistroyfailure(error: e.toString()));
  print(e.toString());
}
    
  }

}
