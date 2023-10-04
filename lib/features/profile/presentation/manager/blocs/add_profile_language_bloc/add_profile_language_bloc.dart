import 'package:bloc/bloc.dart';

import '../../../../domain/use_cases/add_profile_language_use_case.dart';

part 'add_profile_language_event.dart';
part 'add_profile_language_state.dart';

class AddProfileLanguageBloc
    extends Bloc<AddProfileLanguageEvent, AddProfileLanguageState> {
  final AddProfileLanguageUseCase addProfileLanguageUseCase;

  AddProfileLanguageBloc({required this.addProfileLanguageUseCase})
      : super(AddProfileLanguageInitial()) {
    on<AddProfileLanguageEvent>((event, emit) async {
      emit(AddProfileLanguageLoading());
      final result =
          await addProfileLanguageUseCase.call(language: event.language);
      result.fold(
        (failure) =>
            emit(AddProfileLanguageFailure(errorMsg: failure.errorMessage)),
        (_) => emit(AddProfileLanguageSuccess()),
      );
    });
  }
}
