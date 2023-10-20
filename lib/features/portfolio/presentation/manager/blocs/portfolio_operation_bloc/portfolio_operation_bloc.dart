import 'package:bloc/bloc.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';
import 'package:jobseque/features/portfolio/domain/use_cases/delete_portfolio_use_case.dart';
import '../../../../../portfolio/domain/use_cases/add_portfolio_use_case.dart';
part 'portfolio_operation_event.dart';
part 'portfolio_operation_state.dart';

class PortfolioOperationBloc
    extends Bloc<PortfolioOperationEvent, PortFolioOperationState> {
  final AddPortfolioUseCase addPortfolioUseCase;
  final DeletePortfolioUseCase deletePortfolioUseCase;

  PortfolioOperationBloc({
    required this.addPortfolioUseCase,
    required this.deletePortfolioUseCase,
  }) : super(PortFolioOperationInitial()) {
    on<PortfolioOperationEvent>((event, emit) async {
      emit(PortFolioOperationLoading());
      if (event is AddPortfolioEvent) {
        final result = await addPortfolioUseCase.call();
        result.fold(
          (failure) => emit(
            AddPortfolioFailure(errorMsg: failure.errorMessage),
          ),
          (_) => emit(
            AddPortfolioSuccess(),
          ),
        );
      }
      if (event is DeletePortfolioEvent) {
        final result =
            await deletePortfolioUseCase.call(portfolio: event.portfolio);
        result.fold(
          (failure) =>
              emit(DeletePortfolioFailure(errorMsg: failure.errorMessage)),
          (_) => emit(DeletePortfolioSuccess()),
        );
      }
    });
  }
}
