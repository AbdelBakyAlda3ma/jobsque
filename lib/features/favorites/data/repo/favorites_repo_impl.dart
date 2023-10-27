import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/favorites/data/data_source/favorite_local_data_source.dart';
import 'package:jobseque/features/favorites/domain/repos/favorites_repo.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class FavoritesRepoImpl extends FavoritesRepo {
  FavoriteLocalDataSource favoriteLocalDataSource;
  FavoritesRepoImpl({
    required this.favoriteLocalDataSource,
  });
  @override
  Future<void> addFavorite({required JobEntity job}) async {
    await favoriteLocalDataSource.addFavorite(job: job);
  }

  @override
  Future<void> deleteFavorite({required JobEntity job}) async {
    await favoriteLocalDataSource.deleteFacvorite(job: job);
  }

  @override
  Either<Failure, List<JobEntity>> getFavoriteJobs() {
    try {
      var listOfFavoriteJobs = favoriteLocalDataSource.getFavoriteJobs();
      return Right(listOfFavoriteJobs);
    } on NoFavoriteJobsException {
      return Left(NoFavoriteJobsFailure());
    }
  }
}
