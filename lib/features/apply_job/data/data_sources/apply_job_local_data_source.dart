import 'package:hive/hive.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';

abstract class ApplyJobLocalDataSource {
  void addActiveApplication({
    required ActiveAppliedJobEntity activeAppliedJobEntity,
  });
  List<ActiveAppliedJobEntity> showActiveAppliedJobs();
}

class ApplyJobLocalDataSourceImpl extends ApplyJobLocalDataSource {
  @override
  addActiveApplication({
    required ActiveAppliedJobEntity activeAppliedJobEntity,
  }) async {
    var box = Hive.box<ActiveAppliedJobEntity>(kActiveAppliedJobBox);
    await box.add(activeAppliedJobEntity);
  }

  @override
  List<ActiveAppliedJobEntity> showActiveAppliedJobs() {
    var box = Hive.box<ActiveAppliedJobEntity>(kActiveAppliedJobBox);
    List<ActiveAppliedJobEntity> listOfActiveAppliedJobs = box.values.toList();
    return listOfActiveAppliedJobs;
  }
}
