part of 'getfavorite_cubit.dart';

@immutable
sealed class FavoriteState {}

final class FavoriteInitial extends FavoriteState {}
final class Favoritefailure extends FavoriteState {
  final String error;

  Favoritefailure({required this.error});
}
final class Favoritesuccess extends FavoriteState {}
final class Favoriteloding extends FavoriteState {}
