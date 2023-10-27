import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/favorites/domain/repos/favorites_repo.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class GetFavoriteJobsUseCase {
  FavoritesRepo favoritesRepo;
  GetFavoriteJobsUseCase({
    required this.favoritesRepo,
  });
  Either<Failure, List<JobEntity>> call() {
    return favoritesRepo.getFavoriteJobs();
  }
}
