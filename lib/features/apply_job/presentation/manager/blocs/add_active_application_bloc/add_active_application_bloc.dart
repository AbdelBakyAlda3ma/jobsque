import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_active_application_event.dart';
part 'add_active_application_state.dart';

class AddActiveApplicationBloc extends Bloc<AddActiveApplicationEvent, AddActiveApplicationState> {
  AddActiveApplicationBloc() : super(AddActiveApplicationInitial()) {
    on<AddActiveApplicationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
