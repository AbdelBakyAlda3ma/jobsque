import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_submited_accepted_item.dart';

class HomeSubmittedJobsSectionListView extends StatelessWidget {
  final List<JobEntity> submittedJobs;
  const HomeSubmittedJobsSectionListView({
    super.key,
    required this.submittedJobs,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        height: 94,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => HomeSubmitedAcceptedItem(
            job: submittedJobs[index],
          ),
          separatorBuilder: (context, index) =>
              const HorizontalSpace(space: 12),
          itemCount: submittedJobs.length,
        ),
      ),
    );
  }
}
