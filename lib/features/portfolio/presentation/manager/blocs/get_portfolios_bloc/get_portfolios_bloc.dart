import 'package:bloc/bloc.dart';
import 'package:jobseque/core/errors/failure.dart';
import '../../../../../portfolio/domain/entities/portfolio_entity.dart';
import '../../../../../portfolio/domain/use_cases/get_portfolios_use_case.dart';
part 'get_portfolios_event.dart';
part 'get_portfolios_state.dart';

class GetPortfoliosBloc extends Bloc<GetPortfoliosEvent, GetPortfoliosState> {
  final GetPortfoliosUseCase getPortfoliosUseCase;

  GetPortfoliosBloc({required this.getPortfoliosUseCase})
      : super(GetPortfoliosInitial()) {
    on<GetPortfoliosEvent>(
      (event, emit) async {
        emit(GetPortfoliosLoading());
        final result = await getPortfoliosUseCase.call();
        result.fold(
          (failure) {
            if (failure is NoPortfoliosYetFailure) {
              emit(
                GetPortfoliosNoPortfoliosAddedYet(
                  errorMsg: failure.errorMessage,
                ),
              );
            } else {
              emit(
                GetPortfoliosFailure(
                  errorMsg: failure.errorMessage,
                ),
              );
            }
          },
          (portfolios) => emit(
            GetPortfoliosSuccess(
              portfolios: portfolios,
            ),
          ),
        );
      },
    );
  }
}
