import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';
import 'package:google_sign_in/google_sign_in.dart';
part 'login_with_google_state.dart';

class LoginWithGoogleCubit extends Cubit<LoginWithGoogleState> {
  LoginWithGoogleCubit() : super(LoginWithGoogleInitial());



 Future signInWithGoogle() async {
  emit(LoginWithGoogleloding());
  // Trigger the authentication flow
  try {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
  
  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
  
  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );
  emit(LoginWithGooglesuccess());
} on Exception catch (e) {
emit(LoginWithGooglefailure(error: e.toString()));
}
}



}
