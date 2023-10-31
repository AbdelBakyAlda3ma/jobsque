import 'package:bloc/bloc.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';
import 'package:jobseque/features/auth/domain/use_cases/login_use_case.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase loginUseCase;
  String? password;
  String? email;
  LoginBloc({
    required this.loginUseCase,
  }) : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoginLoading());
      final result = await loginUseCase(
        loginData: {
          'password': password,
          'email': email,
        },
      );
      result.fold(
        (failure) => emit(
          LoginFailure(
            failureMessage: failure.errorMessage,
          ),
        ),
        (user) => emit(
          LoginSuccess(
            user: user,
          ),
        ),
      );
    });
  }
}
