import 'package:bloc/bloc.dart';
import 'package:jobseque/features/favorites/domain/use_cases/add_favorite_use_case.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

part 'add_favorite_event.dart';
part 'add_favorite_state.dart';

class AddFavoriteBloc extends Bloc<AddFavoriteEvent, AddFavoriteState> {
  AddFavoriteUseCase addFavoriteUseCase;

  AddFavoriteBloc({
    required this.addFavoriteUseCase,
  }) : super(AddFavoriteInitial()) {
    on<AddFavoriteEvent>(
      (event, emit) async {
        await addFavoriteUseCase(
          job: event.job,
        );
        emit(AddFavoriteDone());
      },
    );
  }
}
