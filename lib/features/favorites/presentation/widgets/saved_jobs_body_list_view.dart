import 'package:flutter/material.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_card.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import '../../../../core/widgets/vertical_space.dart';

class SavedJobsBodyListView extends StatelessWidget {
  final List<JobEntity> jobs;
  const SavedJobsBodyListView({
    super.key,
    required this.jobs,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          itemBuilder: ((context, index) => SavedJobCard(
                job: jobs[index],
              )),
          separatorBuilder: (context, index) => const VerticalSpace(space: 16),
          itemCount: jobs.length,
        ),
      ),
    );
  }
}
