import 'package:bloc/bloc.dart';
import 'package:jobseque/features/favorites/domain/use_cases/delete_favorite_use_case.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

part 'delete_favorite_event.dart';
part 'delete_favorite_state.dart';

class DeleteFavoriteBloc
    extends Bloc<DeleteFavoriteEvent, DeleteFavoriteState> {
  DeleteFavoriteUseCase deleteFavoriteUseCase;
  DeleteFavoriteBloc({
    required this.deleteFavoriteUseCase,
  }) : super(DeleteFavoriteInitial()) {
    on<DeleteFavoriteEvent>(
      (event, emit) async {
        await deleteFavoriteUseCase(
          job: event.job,
        );
        emit(DeleteFavoriteDone());
      },
    );
  }
}
