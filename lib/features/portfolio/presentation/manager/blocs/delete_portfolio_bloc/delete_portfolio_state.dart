part of 'delete_portfolio_bloc.dart';

sealed class DeletePortfolioState {}

final class DeletePortfolioInitial extends DeletePortfolioState {}

class DeletePortfolioLoading extends DeletePortfolioState {}

class DeletePortfolioSuccess extends DeletePortfolioState {}

class DeletePortfolioFailure extends DeletePortfolioState {
  final String errorMsg;

  DeletePortfolioFailure({required this.errorMsg});
}
