import 'package:dartz/dartz.dart';
import '../../../../core/errors/failure.dart';
import '../entities/portfolio_entity.dart';
import '../repos/profile_repository.dart';

class GetPortfoliosUseCase {
  final ProfileRepository profileRepository;
  GetPortfoliosUseCase({required this.profileRepository});
  Future<Either<Failure, List<PortfolioEntity>>> call() {
    return profileRepository.getPortfolios();
  }
}
