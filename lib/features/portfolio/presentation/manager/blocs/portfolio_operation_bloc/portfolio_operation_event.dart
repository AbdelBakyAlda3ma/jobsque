part of 'portfolio_operation_bloc.dart';

sealed class PortfolioOperationEvent {}

class AddPortfolioEvent extends PortfolioOperationEvent {
  AddPortfolioEvent();
}

class DeletePortfolioEvent extends PortfolioOperationEvent {
  final PortfolioEntity portfolio;

  DeletePortfolioEvent({required this.portfolio});
}
