part of 'search_bloc.dart';

sealed class SearchEvent {}

class SearchJobsEvent extends SearchEvent {
  String searchTopic;
  SearchJobsEvent({
    required this.searchTopic,
  });
}

class FilterSearchEvent extends SearchEvent {}
