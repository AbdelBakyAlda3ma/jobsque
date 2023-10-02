import 'package:flutter/material.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_bottom_sheet.dart';

import '../../../../core/utils/functions/show_filter_modal_bottom_sheet.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class SavedJobShowBottomSheetButton extends StatelessWidget {
  const SavedJobShowBottomSheetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAppCustomBottomSheet(
          context,
          bottomSheetView: const SavedJobBottomSheet(),
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
