import 'package:hive/hive.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';

abstract class ApplyJobLocalDataSource {
  void addActiveApplication({
    required ActiveAppliedJobEntity activeAppliedJobEntity,
  });
  List<ActiveAppliedJobEntity> getActiveAppliedJobs();
}

class ApplyJobLocalDataSourceImpl extends ApplyJobLocalDataSource {
  @override
  addActiveApplication({
    required ActiveAppliedJobEntity activeAppliedJobEntity,
  }) async {
    var box = Hive.box<ActiveAppliedJobEntity>(kActiveAppliedJobBox);
    await box.put(
      activeAppliedJobEntity.job!.id,
      activeAppliedJobEntity,
    );
  }

  @override
  List<ActiveAppliedJobEntity> getActiveAppliedJobs() {
    var box = Hive.box<ActiveAppliedJobEntity>(kActiveAppliedJobBox);
    List<ActiveAppliedJobEntity> listOfActiveAppliedJobs =
        box.values.toSet().toList();
    return listOfActiveAppliedJobs;
  }
}
