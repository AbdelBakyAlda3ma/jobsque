import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/presentation/widgets/messages_filters_bottom_sheet_widget.dart';

import '../../../../core/utils/functions/show_filter_modal_bottom_sheet.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class MessagesFiltersShowBottomSheetButton extends StatelessWidget {
  const MessagesFiltersShowBottomSheetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAppCustomBottomSheet(
          context,
          bottomSheetView: const MessagesFiltersBottomSheetWidget(),
          borderRadius: 16,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.neutral[300]!,
          ),
        ),
        child: Icon(
          IconsJobeque.setting,
          size: 24,
          color: AppColors.neutral[900],
        ),
      ),
    );
  }
}
