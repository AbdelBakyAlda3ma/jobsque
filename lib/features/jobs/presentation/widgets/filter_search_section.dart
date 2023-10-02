import 'package:flutter/material.dart';

import '../../../../core/widgets/horizontal_space.dart';
import 'filter_search_section_list_view.dart';
import 'filter_search_section_setting_button.dart';

class FilterSearchSection extends StatelessWidget {
  const FilterSearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        HorizontalSpace(space: 24),

        /// this button invoke [SetFilter] modal bottom sheet view
        FilterSearchSectionSettingButton(),
        HorizontalSpace(space: 12),
        FilterSearchSectionListView()
      ],
    );
  }
}
