import 'package:jobseque/features/favorites/domain/repos/favorites_repo.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class DeleteFavoriteUseCase {
  FavoritesRepo favoritesRepo;
  DeleteFavoriteUseCase({
    required this.favoritesRepo,
  });
  Future<void> call({required JobEntity job}) async {
    await favoritesRepo.deleteFavorite(job: job);
  }
}
