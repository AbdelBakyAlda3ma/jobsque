import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/presentation/widgets/chatting_bottom_sheet.dart';

import '../../../../core/utils/functions/show_filter_modal_bottom_sheet.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class ChattingShowBottomSheetButton extends StatelessWidget {
  const ChattingShowBottomSheetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAppCustomBottomSheet(
          context,
          bottomSheetView: const ChattingBottomSheet(),
          borderRadius: 16,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 24),
        child: Icon(
          IconsJobeque.more,
          size: 24,
          color: AppColors.neutral[900],
        ),
      ),
    );
  }
}
