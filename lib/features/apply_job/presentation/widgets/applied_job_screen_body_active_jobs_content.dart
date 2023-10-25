import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/active_job_card.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_no_added_jobs.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_body_active_jobs_content_header.dart';

class AppliedJobScreenBodyActiveJobsContent extends StatelessWidget {
  final List<ActiveAppliedJobEntity> listOfActiveAppliedJobs;
  const AppliedJobScreenBodyActiveJobsContent({
    super.key,
    required this.listOfActiveAppliedJobs,
  });

  @override
  Widget build(BuildContext context) {
    return listOfActiveAppliedJobs.isNotEmpty
        ? Column(
            children: [
              AppliedJobScreenBodyActiveJobsContentHeader(
                listOfJobs: listOfActiveAppliedJobs,
              ),
              const VerticalSpace(space: 24),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemBuilder: (context, index) => ActiveJobCard(
                    activeAppliedJob: listOfActiveAppliedJobs[index],
                  ),
                  separatorBuilder: ((context, index) =>
                      const VerticalSpace(space: 20)),
                  itemCount: listOfActiveAppliedJobs.length,
                ),
              ),
            ],
          )
        : const AppliedJobNoAddedJobs();
  }
}
