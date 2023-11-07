import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/domain/repositories/job_repository.dart';

class AddSubmittedJobUseCase {
  JobRepository jobRepository;
  AddSubmittedJobUseCase({
    required this.jobRepository,
  });
  Future<void> call({
    required JobEntity job,
  }) async {
    jobRepository.addSubmittedJob(
      job: job,
    );
  }
}
