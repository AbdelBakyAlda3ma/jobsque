// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

part 'active_applied_job_entity.g.dart';

@HiveType(typeId: 5)
class ActiveAppliedJobEntity {
  @HiveField(0)
  JobEntity? job;
  @HiveField(1)
  int? applicationStepProgress;
  @HiveField(2)
  ApplyJobEntity? applyJobEntity;
  ActiveAppliedJobEntity({
    this.job,
    this.applicationStepProgress,
    this.applyJobEntity,
  });

  ActiveAppliedJobEntity copyWith({
    JobEntity? job,
    int? applicationStepProgress,
    ApplyJobEntity? applyJobEntity,
  }) {
    return ActiveAppliedJobEntity(
      job: job ?? this.job,
      applicationStepProgress:
          applicationStepProgress ?? this.applicationStepProgress,
      applyJobEntity: applyJobEntity ?? this.applyJobEntity,
    );
  }
}
