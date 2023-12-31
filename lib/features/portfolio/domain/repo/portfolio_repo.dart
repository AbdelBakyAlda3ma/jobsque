import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';

abstract class PortfolioRepo {
  Future<Either<Failure, Unit>> addPortfolio();
  Future<Either<Failure, Unit>> deletePortfolio({
    required PortfolioEntity portfolio,
  });
  Future<Either<Failure, List<PortfolioEntity>>> getPortfolios();
}
