import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_modal_bottom_sheet_widget.dart';
import '../../../../core/utils/functions/show_filter_modal_bottom_sheet.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class FilterSearchSectionSettingButton extends StatelessWidget {
  const FilterSearchSectionSettingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showAppCustomBottomSheet(
          context,
          bottomSheetView: const SetFilterModalBottomSheetWidget(),
        );
      },
      child: const Icon(IconsJobeque.setting),
    );
  }
}
