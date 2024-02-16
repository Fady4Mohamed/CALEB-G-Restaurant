part of 'add_to_cart_cubit.dart';

@immutable
sealed class AddToCartState {}

final class AddToCartInitial extends AddToCartState {}
final class AddToCartsuccess extends AddToCartState {}
final class AddToCartfailure extends AddToCartState {
  final String error;

  AddToCartfailure({required this.error});
}
final class AddToCartloding extends AddToCartState {}