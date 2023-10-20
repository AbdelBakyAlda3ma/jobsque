import 'package:dartz/dartz.dart';
import 'package:jobseque/features/portfolio/domain/repo/portfolio_repo.dart';
import '../../../../core/errors/failure.dart';

class AddPortfolioUseCase {
  final PortfolioRepo portfolioRepo;
  AddPortfolioUseCase({required this.portfolioRepo});
  Future<Either<Failure, Unit>> call() {
    return portfolioRepo.addPortfolio();
  }
}
