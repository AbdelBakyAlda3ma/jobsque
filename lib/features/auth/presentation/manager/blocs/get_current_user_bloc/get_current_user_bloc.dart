import 'package:bloc/bloc.dart';
import 'package:jobseque/features/auth/domain/entities/user_entity.dart';
import 'package:jobseque/features/auth/domain/use_cases/get_curren_user_use_case.dart';
part 'get_current_user_event.dart';
part 'get_current_user_state.dart';

class GetCurrentUserBloc
    extends Bloc<GetCurrentUserEvent, GetCurrentUserState> {
  GetCurrenUserUseCase getCurrenUserUseCase;
  GetCurrentUserBloc({
    required this.getCurrenUserUseCase,
  }) : super(GetCurrentUserInitial()) {
    on<GetCurrentUserEvent>((event, emit) async {
      emit(GetCurrentUserLoading());
      var result = await getCurrenUserUseCase();

      result.fold(
        (failure) => emit(GetCurrentUserFailure()),
        (user) => emit(GetCurrentUserSuccess(user: user)),
      );
    });
  }
}
