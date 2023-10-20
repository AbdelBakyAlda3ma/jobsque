import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'show_active_applied_jobs_event.dart';
part 'show_active_applied_jobs_state.dart';

class ShowActiveAppliedJobsBloc extends Bloc<ShowActiveAppliedJobsEvent, ShowActiveAppliedJobsState> {
  ShowActiveAppliedJobsBloc() : super(ShowActiveAppliedJobsInitial()) {
    on<ShowActiveAppliedJobsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
