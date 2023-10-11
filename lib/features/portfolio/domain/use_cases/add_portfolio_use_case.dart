import 'package:dartz/dartz.dart';
import 'package:jobseque/features/portfolio/domain/repo/portfolio_repo.dart';
import '../../../../core/errors/failure.dart';
import '../entities/portfolio_entity.dart';

class AddPortfolioUseCase {
  final PortfolioRepo portfolioRepo;
  AddPortfolioUseCase({required this.portfolioRepo});
  Future<Either<Failure, PortfolioEntity>> call(
      {required String pathOfcV, required String portfolioName}) {
    return portfolioRepo.addPortfolio(
        pathOfcV: pathOfcV, portfolioName: portfolioName);
  }
}
