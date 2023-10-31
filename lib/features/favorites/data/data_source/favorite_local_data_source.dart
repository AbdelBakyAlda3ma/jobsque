import 'package:hive/hive.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

abstract class FavoriteLocalDataSource {
  void addFavorite({required JobEntity job});
  void deleteFacvorite({required JobEntity job});
  List<JobEntity> getFavoriteJobs();
}

class FavoriteLocalDataSourceImpl extends FavoriteLocalDataSource {
  @override
  Future<void> addFavorite({required JobEntity job}) async {
    var boxOfJobs = Hive.box<JobEntity>(kJoBsBox);
    var boxOfActiveApplied =
        Hive.box<ActiveAppliedJobEntity>(kActiveAppliedJobBox);
    boxOfJobs.put(
      job.id,
      job.copyWith(
        isSaved: true,
      ),
    );

    if (boxOfActiveApplied.isNotEmpty) {
      if (boxOfActiveApplied.containsKey(job.id)) {
        var jobFromActiveAppJob = boxOfActiveApplied.values.singleWhere(
          (activeAppliedJob) => activeAppliedJob.job!.id == job.id,
        );
        boxOfActiveApplied.put(
          jobFromActiveAppJob.job!.id,
          jobFromActiveAppJob.copyWith(
              job: jobFromActiveAppJob.job!.copyWith(isSaved: true)),
        );
      }
    }
  }

  @override
  void deleteFacvorite({required JobEntity job}) {
    var boxOfJobs = Hive.box<JobEntity>(kJoBsBox);
    var boxOfActiveApplied =
        Hive.box<ActiveAppliedJobEntity>(kActiveAppliedJobBox);
    boxOfJobs.put(
      job.id,
      job.copyWith(
        isSaved: false,
      ),
    );
    if (boxOfActiveApplied.isNotEmpty) {
      if (boxOfActiveApplied.containsKey(job.id)) {
        var jobFromActiveAppJob = boxOfActiveApplied.values.singleWhere(
          (activeAppliedJob) => activeAppliedJob.job!.id == job.id,
        );
        boxOfActiveApplied.put(
          jobFromActiveAppJob.job!.id,
          jobFromActiveAppJob.copyWith(
              job: jobFromActiveAppJob.job!.copyWith(isSaved: false)),
        );
      }
    }
  }

  @override
  List<JobEntity> getFavoriteJobs() {
    var boxOfJobs = Hive.box<JobEntity>(kJoBsBox);
    var listOfFavoriteJobs = boxOfJobs.values
        .where(
          (job) => job.isSaved == true,
        )
        .toList();
    if (listOfFavoriteJobs.isNotEmpty) {
      return listOfFavoriteJobs;
    } else {
      throw NoFavoriteJobsException();
    }
  }
}
