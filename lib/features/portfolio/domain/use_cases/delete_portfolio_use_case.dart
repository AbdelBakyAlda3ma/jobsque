import 'package:dartz/dartz.dart';
import 'package:jobseque/features/portfolio/domain/repo/portfolio_repo.dart';
import '../../../../core/errors/failure.dart';
import '../entities/portfolio_entity.dart';

class DeletePortfolioUseCase {
  final PortfolioRepo portfolioRepo;
  DeletePortfolioUseCase({required this.portfolioRepo});
  Future<Either<Failure, Unit>> call({required PortfolioEntity portfolio}) {
    return portfolioRepo.deletePortfolio(portfolio: portfolio);
  }
}
