import 'package:dartz/dartz.dart';
import 'package:jobseque/features/portfolio/domain/repo/portfolio_repo.dart';
import '../../../../core/errors/failure.dart';
import '../entities/portfolio_entity.dart';

class GetPortfoliosUseCase {
  final PortfolioRepo portfolioRepo;
  GetPortfoliosUseCase({required this.portfolioRepo});
  Future<Either<Failure, List<PortfolioEntity>>> call() {
    return portfolioRepo.getPortfolios();
  }
}
