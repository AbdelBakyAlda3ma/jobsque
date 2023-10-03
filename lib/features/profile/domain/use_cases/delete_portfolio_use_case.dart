import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/portfolio_entity.dart';
import '../repos/profile_repository.dart';

class DeletePortfolioUseCase {
  final ProfileRepository profileRepository;
  DeletePortfolioUseCase({required this.profileRepository});
  Future<Either<Failure, Unit>> call({required PortfolioEntity portfolio}) {
    return profileRepository.deletePortfolio(portfolio: portfolio);
  }
}
