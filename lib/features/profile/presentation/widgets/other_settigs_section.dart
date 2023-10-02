import 'package:flutter/material.dart';
import 'package:jobseque/features/profile/presentation/widgets/other_settings_list.dart';
import '../../../../core/widgets/custom_header.dart';
import '../../../../core/widgets/vertical_space.dart';

class OtherSettigsSection extends StatelessWidget {
  const OtherSettigsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(headerTitle: 'Others'),
        VerticalSpace(space: 16),
        OtherSettingsList(),
      ],
    );
  }
}
