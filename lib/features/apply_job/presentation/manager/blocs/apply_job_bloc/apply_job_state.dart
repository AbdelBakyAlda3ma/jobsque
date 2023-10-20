part of 'apply_job_bloc.dart';

sealed class ApplyJobState extends Equatable {
  const ApplyJobState();
  
  @override
  List<Object> get props => [];
}

final class ApplyJobInitial extends ApplyJobState {}
