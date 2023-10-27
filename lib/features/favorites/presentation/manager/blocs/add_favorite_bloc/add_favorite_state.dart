part of 'add_favorite_bloc.dart';

sealed class AddFavoriteState {
  const AddFavoriteState();
}

final class AddFavoriteInitial extends AddFavoriteState {}

final class AddFavoriteDone extends AddFavoriteState {}
