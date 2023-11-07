part of 'add_submitted_job_bloc.dart';

sealed class AddSubmittedJobState {}

final class AddSubmittedJobInitial extends AddSubmittedJobState {}

final class AddSubmittedJobDone extends AddSubmittedJobState {}
