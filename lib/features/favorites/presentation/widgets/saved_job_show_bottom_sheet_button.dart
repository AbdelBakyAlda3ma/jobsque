import 'package:flutter/material.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_bottom_sheet_widget.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../../../../core/utils/functions/show_filter_modal_bottom_sheet.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class SavedJobShowBottomSheetButton extends StatelessWidget {
  final JobEntity job;
  const SavedJobShowBottomSheetButton({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAppCustomBottomSheet(
          context,
          bottomSheetView: SavedJobBottomSheetWidget(
            job: job,
          ),
          borderRadius: 16,
        );
      },
      child: Icon(
        IconsJobeque.more,
        color: AppColors.neutral[900],
        size: 24,
      ),
    );
  }
}
