import 'package:bloc/bloc.dart';
import 'package:jobseque/features/auth/domain/use_cases/log_out_use_case.dart';

part 'log_out_event.dart';
part 'log_out_state.dart';

class LogOutBloc extends Bloc<LogOutEvent, LogOutState> {
  LogOutUseCase logOutUseCase;
  LogOutBloc({
    required this.logOutUseCase,
  }) : super(LogOutInitial()) {
    on<LogOutEvent>(
      (event, emit) async {
        emit(LogOutLoading());
        var result = await logOutUseCase();
        result.fold(
          (failure) => emit(
            LogOutFailure(
              errMsg: failure.errorMessage,
            ),
          ),
          (_) => emit(
            LogOutSuccess(),
          ),
        );
      },
    );
  }
}
