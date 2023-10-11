import 'package:bloc/bloc.dart';
import '../../../../../portfolio/domain/use_cases/add_portfolio_use_case.dart';
part 'add_portfolio_event.dart';
part 'add_portfolio_state.dart';

class AddPortfolioBloc extends Bloc<AddPortfolioEvent, AddPortfolioState> {
  final AddPortfolioUseCase addPortfolioUseCase;

  AddPortfolioBloc({required this.addPortfolioUseCase})
      : super(AddPortfolioInitial()) {
    on<AddPortfolioEvent>((event, emit) async {
      emit(AddPortfolioLoading());
      final result = await addPortfolioUseCase.call(
        pathOfcV: event.pathOfcV,
        portfolioName: event.portfolioName,
      );
      result.fold(
        (failure) => emit(AddPortfolioFailure(errorMsg: failure.errorMessage)),
        (_) => emit(AddPortfolioSuccess()),
      );
    });
  }
}
