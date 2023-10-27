import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_header.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class SavdedJobsBodyHeader extends StatelessWidget {
  final List<JobEntity> jobs;

  const SavdedJobsBodyHeader({
    super.key,
    required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    return jobs.length > 1
        ? CustomHeader(
            headerTitle: '${jobs.length} Jobs Saved',
            alignment: Alignment.center,
          )
        : const CustomHeader(
            headerTitle: 'One Job Saved',
            alignment: Alignment.center,
          );
  }
}
