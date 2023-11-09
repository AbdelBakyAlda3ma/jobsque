import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_list_view_item_category.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_list_view_item_job_title.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_list_view_item_price_and_apply_button.dart';
import '../../../../core/utils/global/app_colors.dart';

class HomeSuggestedJobSectionListViewItem extends StatelessWidget {
  final JobEntity job;
  const HomeSuggestedJobSectionListViewItem({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      width: 300,
      height: 183,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.primary[900],
      ),
      child: Column(
        children: [
          HomeSuggestedJobSectionListViewItemJobTitle(
            job: job,
          ),
          HomeSuggestedJobSectionListViewItemCategory(
            job: job,
          ),
          HomeSuggestedJobSectionListViewItemPriceAndApplyButton(
            job: job,
          ),
        ],
      ),
    );
  }
}
