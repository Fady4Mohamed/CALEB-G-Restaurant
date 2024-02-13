import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';

part 'user_data_information_state.dart';

class UserDataInformationCubit extends Cubit<UserDataInformationState> {
  UserDataInformationCubit() : super(UserDataInformationInitial());
   String? email;
    String? name;
   void getuser()async{
   if ( GoogleSignIn().currentUser!=null) {
 email =await GoogleSignIn().currentUser!.email;
  name =await GoogleSignIn().currentUser!.displayName;
}else{
   await FirebaseAuth.instance.authStateChanges().listen((event) {
    if (event!=null) {
      email = event.email;
      name=email!.substring(0, email!.indexOf('@'));
      return;
    }
    });}

    print(email);
    print(name);
   }
}
