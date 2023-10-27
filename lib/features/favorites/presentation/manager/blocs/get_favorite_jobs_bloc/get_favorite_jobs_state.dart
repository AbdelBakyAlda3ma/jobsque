part of 'get_favorite_jobs_bloc.dart';

sealed class GetFavoriteJobsState {}

final class GetFavoriteJobsInitial extends GetFavoriteJobsState {}

final class GetFavoriteJobsSuccess extends GetFavoriteJobsState {
  List<JobEntity> listOfFavoriteJobs;
  GetFavoriteJobsSuccess({
    required this.listOfFavoriteJobs,
  });
}

final class GetFavoriteJobsFailure extends GetFavoriteJobsState {
  String errorMsg;
  GetFavoriteJobsFailure({
    required this.errorMsg,
  });
}
