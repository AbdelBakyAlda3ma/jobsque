part of 'add_portfolio_bloc.dart';

sealed class AddPortfolioState {}

final class AddPortfolioInitial extends AddPortfolioState {}

class AddPortfolioLoading extends AddPortfolioState {}

class AddPortfolioSuccess extends AddPortfolioState {}

class AddPortfolioFailure extends AddPortfolioState {
  final String errorMsg;

  AddPortfolioFailure({required this.errorMsg});
}
