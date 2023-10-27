import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/job_image.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_show_bottom_sheet_button.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/horizontal_space.dart';

class SavedJobCardTitle extends StatelessWidget {
  final JobEntity job;

  const SavedJobCardTitle({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      height: 45,
      width: double.maxFinite,
      child: Row(
        children: [
          JobImage(
            imageUrl: job.image ?? '',
            height: 40,
            width: 40,
          ),
          const HorizontalSpace(space: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  job.name ?? '',
                  softWrap: false,
                  style: CustomTextStyles.h5Medium
                      .copyWith(color: AppColors.neutral[900]),
                ),
                Text(
                  job.location ?? '',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.textSRegular
                      .copyWith(color: AppColors.neutral[400]),
                ),
              ],
            ),
          ),
          SavedJobShowBottomSheetButton(
            job: job,
          ),
        ],
      ),
    );
  }
}
