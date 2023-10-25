import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/in_progress_applied_job_screen_body_header.dart';

class InProgressAppliedJobScreenBody extends StatelessWidget {
  final ActiveAppliedJobEntity activeAppliedJob;

  const InProgressAppliedJobScreenBody(
      {super.key, required this.activeAppliedJob});

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const VerticalSpace(space: 18),
              InProgressAppliedJobScreenBodyHeader(
                job: activeAppliedJob.job!,
              ),
              const VerticalSpace(space: 32),
            ],
          ),
        ),
      ],
      body: ApplyJobStepper(
        activeAppliedJob: activeAppliedJob,
      ),
    );
  }
}
