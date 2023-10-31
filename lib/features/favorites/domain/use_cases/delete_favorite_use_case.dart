import 'package:jobseque/features/favorites/domain/repos/favorites_repo.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class DeleteFavoriteUseCase {
  FavoritesRepo favoritesRepo;
  DeleteFavoriteUseCase({
    required this.favoritesRepo,
  });
  void call({required JobEntity job}) {
    favoritesRepo.deleteFavorite(job: job);
  }
}
