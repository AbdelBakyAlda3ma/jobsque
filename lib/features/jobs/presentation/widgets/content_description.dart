import 'package:flutter/material.dart';

import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';
import 'content_description_job_decription.dart';
import 'content_description_skill_required.dart';

class ContentDecription extends StatelessWidget {
  final JobEntity job;

  const ContentDecription({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ContentDescriptionJobDescription(job: job),
          const VerticalSpace(space: 20),
          ContentDescriptionSkillRequired(
            job: job,
          ),
          const VerticalSpace(space: 70),
        ],
      ),
    );
  }
}
