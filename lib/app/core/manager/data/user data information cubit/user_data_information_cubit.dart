import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart';
part 'user_data_information_state.dart';

class UserDataInformationCubit extends Cubit<UserDataInformationState> {
  UserDataInformationCubit() : super(UserDataInformationInitial());
  File? file;
  String? email;
  String? name;
  String? url;
  void getuser() async {
    if (GoogleSignIn().currentUser != null) {
      email = await GoogleSignIn().currentUser!.email;
      name = email!.substring(0, email!.indexOf('@'));
    } else {
      await FirebaseAuth.instance.authStateChanges().listen((event) {
        if (event != null) {
          email = event.email;
          name = email!.substring(0, email!.indexOf('@'));
          url = event.photoURL;
        }
      });
    }
  }

  Future<String> uploadImage() async {
    if (file != null) {
      String Imagepath = basename(file!.path);
      final storageRef = FirebaseStorage.instance.ref(Imagepath);
      await storageRef.putFile(file!);
      String _url;
      _url = await storageRef.getDownloadURL();
      return _url;
    }
    throw Exception(['image is equal null']);
  }

  Future<void> setimagetoprofile() async {
    print('nnnnnnnnnnnnnnnnnnn');
    if (file != null) {
      try {
        print('ffffffffffffffffffffffffff');
        emit(UserDataInformationloding());
        url = await uploadImage();
        print(url);
        await FirebaseAuth.instance.currentUser!.updatePhotoURL(url);
        emit(UserDataInformationsuccess());
      } on Exception catch (e) {
        emit(UserDataInformationfailer(error: e.toString()));
        print(e.toString());
      }
    }
  }
}
