part of 'apply_job_bloc.dart';

sealed class ApplyJobState {}

final class ApplyJobInitial extends ApplyJobState {}

final class ApplyJobLoading extends ApplyJobState {}

final class ApplyJobSuccess extends ApplyJobState {}

final class ApplyJobFailure extends ApplyJobState {
  String errorMsg;
  ApplyJobFailure({
    required this.errorMsg,
  });
}
