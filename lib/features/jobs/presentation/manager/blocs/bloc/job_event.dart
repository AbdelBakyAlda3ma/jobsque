part of 'job_bloc.dart';

sealed class JobEvent {}

class GetAllJobsEvent extends JobEvent {}

class SearchJobsEvent extends JobEvent {
  String searchTopic;
  SearchJobsEvent({
    required this.searchTopic,
  });
}

class FilterJobsEvent extends JobEvent {}
