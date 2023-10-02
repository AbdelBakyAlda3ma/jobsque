import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import 'horizontal_space.dart';
import 'job_image.dart';

class JobCardTitleAndImageAndSavedIcon extends StatefulWidget {
  final JobEntity job;
  const JobCardTitleAndImageAndSavedIcon({
    super.key,
    required this.job,
  });

  @override
  State<JobCardTitleAndImageAndSavedIcon> createState() =>
      _JobCardTitleAndImageAndSavedIconState();
}

class _JobCardTitleAndImageAndSavedIconState
    extends State<JobCardTitleAndImageAndSavedIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      height: 45,
      child: Row(
        children: [
          JobImage(
            imageUrl: widget.job.image ?? '',
            height: 40,
            width: 40,
          ),
          const HorizontalSpace(space: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.job.name ?? '',
                  softWrap: false,
                  style: CustomTextStyles.h5Medium
                      .copyWith(color: AppColors.neutral[900]),
                ),
                Text(
                  widget.job.location ?? '',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.textSRegular
                      .copyWith(color: AppColors.neutral[400]),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                widget.job.isSaved = !widget.job.isSaved;
              });
            },
            child: widget.job.isSaved
                ? Icon(
                    IconsJobeque.archiveminusbold,
                    color: AppColors.primary[500],
                  )
                : const Icon(
                    IconsJobeque.archiveminus,
                  ),
          ),
        ],
      ),
    );
  }
}
