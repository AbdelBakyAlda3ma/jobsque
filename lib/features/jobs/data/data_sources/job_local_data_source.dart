import 'package:hive/hive.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

abstract class JobLocalDataSource {
  List<JobEntity> getAllJobs();
  Future<void> saveListOfJobs({
    required List<JobEntity> listOfChachedJobs,
  });
  List<JobEntity> showSubmittedJobs();
  Future<void> addSubmittedJob({
    required JobEntity job,
  });
}

class JobLocalDataSourceImpl extends JobLocalDataSource {
  @override
  List<JobEntity> getAllJobs() {
    var box = Hive.box<JobEntity>(kJoBsBox);
    var listOfJobs = box.values.toList();
    return listOfJobs;
  }

  @override
  Future<void> saveListOfJobs({
    required List<JobEntity> listOfChachedJobs,
  }) async {
    var box = Hive.box<JobEntity>(kJoBsBox);
    Map<int, JobEntity> mapOfJobs = {};
    for (var job in listOfChachedJobs) {
      mapOfJobs.addAll({job.id!: job});
    }
    await box.putAll(mapOfJobs);
  }

  @override
  List<JobEntity> showSubmittedJobs() {
    var boxOfJobs = Hive.box<JobEntity>(kJoBsBox);
    var listOfSubmittedJobs = boxOfJobs.values
        .where(
          (job) => job.isSubmitted == true,
        )
        .toList();
    if (listOfSubmittedJobs.isNotEmpty) {
      return listOfSubmittedJobs;
    } else {
      throw NoSubmittedJobsException();
    }
  }

  @override
  Future<void> addSubmittedJob({required JobEntity job}) async {
    var boxOfJobs = Hive.box<JobEntity>(kJoBsBox);
    await boxOfJobs.put(
      job.id,
      job.copyWith(
        isSubmitted: true,
      ),
    );
  }
}
