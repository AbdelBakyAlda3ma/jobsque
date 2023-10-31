import 'package:dartz/dartz.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

abstract class FavoritesRepo {
  void addFavorite({required JobEntity job});
  void deleteFavorite({required JobEntity job});
  Either<Failure, List<JobEntity>> getFavoriteJobs();
}
