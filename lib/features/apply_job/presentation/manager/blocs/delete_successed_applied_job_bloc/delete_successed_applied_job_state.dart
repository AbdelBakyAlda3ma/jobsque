part of 'delete_successed_applied_job_bloc.dart';

sealed class DeleteSuccessedAppliedJobState {}

class DeleteSuccessedAppliedJobInitial extends DeleteSuccessedAppliedJobState {}

class DeleteSuccessedAppliedJobDone extends DeleteSuccessedAppliedJobState {}
