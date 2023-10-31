part of 'favorite_operation_bloc.dart';

sealed class FavoriteOperationEvent {}

class AddFavoriteEvent extends FavoriteOperationEvent {
  JobEntity job;
  AddFavoriteEvent({
    required this.job,
  });
}

class DeleteFavoriteEvent extends FavoriteOperationEvent {
  JobEntity job;
  DeleteFavoriteEvent({
    required this.job,
  });
}
