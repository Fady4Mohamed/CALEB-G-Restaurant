part of 'order_histroy_cubit.dart';

@immutable
sealed class OrderHistroyState {}

final class OrderHistroyInitial extends OrderHistroyState {}
final class OrderHistroyloding extends OrderHistroyState {}
final class OrderHistroysuccess extends OrderHistroyState {}
final class OrderHistroyfailure extends OrderHistroyState {
  final String error;

  OrderHistroyfailure({required this.error});
}
final class noHistory extends OrderHistroyState {}