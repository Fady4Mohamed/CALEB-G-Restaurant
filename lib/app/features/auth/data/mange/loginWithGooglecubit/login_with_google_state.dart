part of 'login_with_google_cubit.dart';

@immutable
sealed class LoginWithGoogleState {}

final class LoginWithGoogleInitial extends LoginWithGoogleState {}
final class LoginWithGooglesuccess extends LoginWithGoogleState {}
final class LoginWithGooglefailure extends LoginWithGoogleState {
  final String error;
  LoginWithGooglefailure({required this.error});
}
final class LoginWithGoogleloding extends LoginWithGoogleState {}