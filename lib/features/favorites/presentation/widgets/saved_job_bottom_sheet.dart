import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/core/widgets/custom_bottom_sheet_item.dart';

class SavedJobBottomSheet extends StatelessWidget {
  const SavedJobBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomBottomSheetItem(
            icon: IconsJobeque.directboxdefault,
            text: 'Apply Job',
          ),
          VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.exportIcon,
            text: 'Share via...',
          ),
          VerticalSpace(space: 12),
          CustomBottomSheetItem(
            icon: IconsJobeque.archiveminus,
            text: 'Cancel save',
          ),
          VerticalSpace(space: 40),
        ],
      ),
    );
  }
}
