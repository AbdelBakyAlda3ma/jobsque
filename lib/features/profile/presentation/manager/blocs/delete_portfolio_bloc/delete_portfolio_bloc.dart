import 'package:bloc/bloc.dart';
import '../../../../domain/entities/portfolio_entity.dart';
import '../../../../domain/use_cases/delete_portfolio_use_case.dart';
part 'delete_portfolio_event.dart';
part 'delete_portfolio_state.dart';

class DeletePortfolioBloc
    extends Bloc<DeletePortfolioEvent, DeletePortfolioState> {
  final DeletePortfolioUseCase deletePortfolioUseCase;

  DeletePortfolioBloc({required this.deletePortfolioUseCase})
      : super(DeletePortfolioInitial()) {
    on<DeletePortfolioEvent>((event, emit) async {
      emit(DeletePortfolioLoading());
      final result =
          await deletePortfolioUseCase.call(portfolio: event.portfolio);
      result.fold(
        (failure) =>
            emit(DeletePortfolioFailure(errorMsg: failure.errorMessage)),
        (_) => emit(DeletePortfolioSuccess()),
      );
    });
  }
}
