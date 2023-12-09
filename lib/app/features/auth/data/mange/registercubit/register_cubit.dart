import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
late final String email;
late String password;


void register({required String lemail,required String lpassword})async {
 emit(Registerloding());
try {
  final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: lemail,
    password: lpassword,
  );
  
email=lemail;
password=lpassword;
   emit(Registersuccess());
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
     emit(Registerfailure(error:'The password provided is too weak.' ));
    
  } else if (e.code == 'email-already-in-use') {
     emit(Registerfailure(error:'The account already exists for that email.' ));
    
  }
} catch (e) {
     emit(Registerfailure(error:'there was an error try again' ));
}


}



}
