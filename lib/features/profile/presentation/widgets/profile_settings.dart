import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/other_settigs_section.dart';

import 'general_settings_section.dart';

class ProfileSettings extends StatelessWidget {
  const ProfileSettings({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        children: [
          GeneralSettigsSection(),
          VerticalSpace(space: 28),
          OtherSettigsSection(),
          VerticalSpace(space: 28),
        ],
      ),
    );
  }
}
