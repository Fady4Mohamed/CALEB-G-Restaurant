part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}
final class Registerfailure extends RegisterState {
  final String error;
  Registerfailure({required this.error});}
final class Registersuccess extends RegisterState {}
final class Registerloding extends RegisterState {}