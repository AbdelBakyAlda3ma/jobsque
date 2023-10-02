import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_header.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'general_settings_list.dart';

class GeneralSettigsSection extends StatelessWidget {
  const GeneralSettigsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(headerTitle: 'General'),
        VerticalSpace(space: 16),
        GeneralSettingsList(),
      ],
    );
  }
}
