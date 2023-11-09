import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/job_image.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/horizontal_space.dart';

class HomeSuggestedJobSectionListViewItemJobTitle extends StatelessWidget {
  final JobEntity job;
  const HomeSuggestedJobSectionListViewItemJobTitle({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
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
                  job.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                      CustomTextStyles.h5Medium.copyWith(color: Colors.white),
                ),
                Text(
                  job.location!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.textSRegular
                      .copyWith(color: AppColors.neutral[400]),
                ),
              ],
            ),
          ),
          const Icon(
            IconsJobeque.archiveminus,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
