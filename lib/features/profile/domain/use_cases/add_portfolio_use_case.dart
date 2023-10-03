import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../entities/portfolio_entity.dart';
import '../repos/profile_repository.dart';

class AddPortfolioUseCase {
  final ProfileRepository profileRepository;
  AddPortfolioUseCase({required this.profileRepository});
  Future<Either<Failure, PortfolioEntity>> call(
      {required String pathOfcV, required String portfolioName}) {
    return profileRepository.addPortfolio(
        pathOfcV: pathOfcV, portfolioName: portfolioName);
  }
}
