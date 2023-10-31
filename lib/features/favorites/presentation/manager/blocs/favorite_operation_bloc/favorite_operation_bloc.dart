// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:jobseque/features/favorites/domain/use_cases/add_favorite_use_case.dart';
import 'package:jobseque/features/favorites/domain/use_cases/delete_favorite_use_case.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
part 'favorite_operation_event.dart';
part 'favorite_operation_state.dart';

class FavoriteOperationBloc
    extends Bloc<FavoriteOperationEvent, FavoriteOperationState> {
  AddFavoriteUseCase addFavoriteUseCase;
  DeleteFavoriteUseCase deleteFavoriteUseCase;

  FavoriteOperationBloc({
    required this.addFavoriteUseCase,
    required this.deleteFavoriteUseCase,
  }) : super(FavoriteOperationInitial()) {
    on<FavoriteOperationEvent>(
      (event, emit) {
        if (event is AddFavoriteEvent) {
          addFavoriteUseCase(
            job: event.job,
          );
          emit(AddFavoriteDone());
        }
        if (event is DeleteFavoriteEvent) {
          deleteFavoriteUseCase(
            job: event.job,
          );
          emit(DeleteFavoriteDone());
        }
      },
    );
  }
}
