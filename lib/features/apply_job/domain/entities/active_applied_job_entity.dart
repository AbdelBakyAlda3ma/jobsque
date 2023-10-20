import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class ActiveAppliedJobEntity {
  JobEntity job;
  int applicationStepProgress;
  ActiveAppliedJobEntity({
    required this.job,
    required this.applicationStepProgress,
  });
}
