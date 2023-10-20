part of 'get_portfolios_bloc.dart';

sealed class GetPortfoliosState {}

final class GetPortfoliosInitial extends GetPortfoliosState {}

class GetPortfoliosLoading extends GetPortfoliosState {}

class GetPortfoliosSuccess extends GetPortfoliosState {
  final List<PortfolioEntity> portfolios;

  GetPortfoliosSuccess({required this.portfolios});
}

class GetPortfoliosFailure extends GetPortfoliosState {
  final String errorMsg;

  GetPortfoliosFailure({required this.errorMsg});
}

class GetPortfoliosNoPortfoliosAddedYet extends GetPortfoliosState {
  final String errorMsg;

  GetPortfoliosNoPortfoliosAddedYet({required this.errorMsg});
}
