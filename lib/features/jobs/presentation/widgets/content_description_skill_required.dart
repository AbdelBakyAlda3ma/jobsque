import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/bullet_list.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';
import '../../domain/entities/job_entity.dart';

class ContentDescriptionSkillRequired extends StatelessWidget {
  final JobEntity job;
  const ContentDescriptionSkillRequired({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Skill Required',
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 8),
        BulletList(job.jobSkill?.split('\n') ?? []),
      ],
    );
  }
}
