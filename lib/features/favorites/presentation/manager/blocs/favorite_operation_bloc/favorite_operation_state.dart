part of 'favorite_operation_bloc.dart';

sealed class FavoriteOperationState {}

final class FavoriteOperationInitial extends FavoriteOperationState {}

final class AddFavoriteDone extends FavoriteOperationState {}

final class DeleteFavoriteInitial extends FavoriteOperationState {}

final class DeleteFavoriteDone extends FavoriteOperationState {}
