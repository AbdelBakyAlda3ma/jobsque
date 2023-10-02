import 'package:bloc/bloc.dart';
import 'package:jobseque/features/auth/domain/use_cases/register_use_case.dart';
import 'package:meta/meta.dart';

import '../../../../domain/entities/user_entity.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  String? email;
  String? password;
  String? name;
  RegisterUseCase registerUseCase;
  RegisterBloc({
    required this.registerUseCase,
  }) : super(RegisterInitial()) {
    on<RegisterEvent>(
      (event, emit) async {
        emit(RegisterLoading());
        var result = await registerUseCase(
          registerData: {
            'password': password,
            'email': email,
            'name': name,
          },
        );
        result.fold(
          (failure) => emit(
            RegisterFailure(failureMessage: failure.errorMessage),
          ),
          (user) => emit(
            RegisterSuccess(user: user),
          ),
        );
      },
    );
  }
}
