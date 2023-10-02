import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/core/widgets/custom_bottom_sheet_item.dart';

class ChattingBottomSheet extends StatelessWidget {
  const ChattingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomBottomSheetItem(
            icon: IconsJobeque.briefcase,
            text: 'Visit job post',
          ),
          VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.note,
            text: 'View my application',
          ),
          VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.sms,
            text: 'Mark as unread',
          ),
          VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.notification,
            text: 'Mute',
          ),
          VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.importIcon,
            text: 'Archive',
          ),
          VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.trash,
            text: 'Delete conversation',
          ),
          VerticalSpace(space: 8),
        ],
      ),
    );
  }
}
