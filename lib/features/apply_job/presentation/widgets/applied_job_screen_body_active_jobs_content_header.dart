import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_header.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';

class AppliedJobScreenBodyActiveJobsContentHeader extends StatelessWidget {
  final List<ActiveAppliedJobEntity> listOfJobs;
  const AppliedJobScreenBodyActiveJobsContentHeader({
    super.key,
    required this.listOfJobs,
  });

  @override
  Widget build(BuildContext context) {
    return listOfJobs.length > 1
        ? CustomHeader(headerTitle: '${listOfJobs.length} jobs')
        : const CustomHeader(headerTitle: 'one job');
  }
}
