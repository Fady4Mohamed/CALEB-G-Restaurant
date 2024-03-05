part of 'payment_cubit.dart';

@immutable
sealed class PaymentState {}

final class PaymentInitial extends PaymentState {}
final class Paymentsuccess extends PaymentState {}
final class Paymentfailure extends PaymentState {
  final String error;

  Paymentfailure({required this.error});
}
final class Paymentloding extends PaymentState {}