part of 'add_favorite_cubit.dart';

@immutable
sealed class AddFavoriteState {}

final class AddFavoriteInitial extends AddFavoriteState {}
final class AddFavoritefailure extends AddFavoriteState {
  final String error;

  AddFavoritefailure({required this.error});
}
final class AddFavoritesuccess extends AddFavoriteState {}
final class AddFavoriteloding extends AddFavoriteState {}