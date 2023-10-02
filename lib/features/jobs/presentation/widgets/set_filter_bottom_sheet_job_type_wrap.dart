import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/job_type_list_items.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_bottom_sheet_job_type_wrap_item.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class SetFilterBottomSheetJobTypeWraper extends StatelessWidget {
  const SetFilterBottomSheetJobTypeWraper({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Job Type',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 12),
        Wrap(
          spacing: 12,
          runSpacing: 16,
          children: jobTypeListItems
              .map(
                (jobTyep) =>
                    SetFilterBottomSheetJobTypeWrapItem(jobType: jobTyep),
              )
              .toList(),
        )
      ],
    );
  }
}
