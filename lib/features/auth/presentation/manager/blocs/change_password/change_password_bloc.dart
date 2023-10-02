import 'package:bloc/bloc.dart';
import 'package:jobseque/features/auth/domain/use_cases/change_password_user_case.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordUseCase changePasswordUseCase;
  String? password;
  ChangePasswordBloc({
    required this.changePasswordUseCase,
  }) : super(ChangePasswordInitial()) {
    on<ChangePasswordEvent>((event, emit) async {
      emit(ChangePasswordLoading());
      var result = await changePasswordUseCase(password: password!);
      result.fold(
        (failure) => emit(
          ChangePasswordFailure(errorMessage: failure.errorMessage),
        ),
        (user) => emit(
          ChangePasswordSuccess(),
        ),
      );
    });
  }
}
