part of 'delete_successed_applied_job_bloc.dart';

class DeleteSuccessedAppliedJobEvent {
  JobEntity successedAppliedJob;
  DeleteSuccessedAppliedJobEvent({
    required this.successedAppliedJob,
  });
}
