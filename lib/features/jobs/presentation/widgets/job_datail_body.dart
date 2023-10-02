import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/job_detail_body_header.dart';
import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';
import 'job_detail_body_primary_button.dart';
import 'job_detail_body_toggle_section.dart';

class JobDetailBody extends StatelessWidget {
  final JobEntity job;
  const JobDetailBody({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const VerticalSpace(space: 16),
              JobDetailBodyHeader(job: job),
              const VerticalSpace(space: 32),
              JobDetailBodyToggelSection(job: job),
            ],
          ),
          const Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: JobDetailBodyBrimaryButton(),
          ),
        ],
      ),
    );
  }
}
