part of 'delete_favorite_bloc.dart';

sealed class DeleteFavoriteState {
  DeleteFavoriteState();
}

final class DeleteFavoriteInitial extends DeleteFavoriteState {}

final class DeleteFavoriteDone extends DeleteFavoriteState {}
