import 'package:jobseque/features/favorites/domain/repos/favorites_repo.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class AddFavoriteUseCase {
  FavoritesRepo favoritesRepo;
  AddFavoriteUseCase({
    required this.favoritesRepo,
  });
  void call({required JobEntity job}) {
    favoritesRepo.addFavorite(job: job);
  }
}
