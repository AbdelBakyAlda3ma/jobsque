import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_body_deader.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_body_list_view.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class SavedJobsBodySuccess extends StatelessWidget {
  const SavedJobsBodySuccess({
    super.key,
    required this.jobs,
  });

  final List<JobEntity> jobs;

  @override
  Widget build(BuildContext context) {
    log('Saved job success build');
    print('Saved job success build');
    return Column(
      children: [
        SavdedJobsBodyHeader(
          jobs: jobs,
        ),
        const VerticalSpace(space: 25),
        SavedJobsBodyListView(
          jobs: jobs,
        ),
      ],
    );
  }
}
