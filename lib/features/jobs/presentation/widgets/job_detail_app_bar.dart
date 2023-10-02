import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../domain/entities/job_entity.dart';

class JobDetailAppBar extends StatelessWidget implements PreferredSizeWidget {
  final JobEntity job;

  const JobDetailAppBar({
    super.key,
    required this.job,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            IconsJobeque.arrowleft,
          ),
        ),
      ),
      centerTitle: true,
      title: Text(
        'Job Detail',
        style: CustomTextStyles.h4Medium.copyWith(
          color: AppColors.neutral[900],
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: job.isSaved
              ? Icon(
                  IconsJobeque.archiveminusbold,
                  color: AppColors.primary[500],
                )
              : const Icon(
                  IconsJobeque.archiveminus,
                ),
        ),
      ],
    );
  }
}
