part of 'user_data_information_cubit.dart';

@immutable
sealed class UserDataInformationState {}

final class UserDataInformationInitial extends UserDataInformationState {}
final class UserDataInformationsuccess extends UserDataInformationState {}
final class UserDataInformationfailer extends UserDataInformationState {
  final String error;

  UserDataInformationfailer({required this.error});
}
final class UserDataInformationloding extends UserDataInformationState {}