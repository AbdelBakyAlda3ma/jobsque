part of 'portfolio_operation_bloc.dart';

sealed class PortFolioOperationState {}

final class PortFolioOperationInitial extends PortFolioOperationState {}

class PortFolioOperationLoading extends PortFolioOperationState {}

class AddPortfolioSuccess extends PortFolioOperationState {}

class AddPortfolioFailure extends PortFolioOperationState {
  final String errorMsg;

  AddPortfolioFailure({required this.errorMsg});
}

class DeletePortfolioSuccess extends PortFolioOperationState {}

class DeletePortfolioFailure extends PortFolioOperationState {
  final String errorMsg;

  DeletePortfolioFailure({required this.errorMsg});
}
