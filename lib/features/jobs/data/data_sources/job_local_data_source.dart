import 'package:hive/hive.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

abstract class JobLocalDataSource {
  List<JobEntity> getAllJobs();
  Future<void> saveListOfJobs({
    required List<JobEntity> listOfChachedJobs,
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
}
