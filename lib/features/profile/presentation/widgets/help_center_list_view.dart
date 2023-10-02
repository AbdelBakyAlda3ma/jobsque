import 'package:flutter/material.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'help_center_item.dart';

class HelpCenterListView extends StatelessWidget {
  const HelpCenterListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: ((context, index) => const HelpCenterItem()),
        separatorBuilder: (context, index) => const VerticalSpace(space: 16),
        itemCount: 6,
      ),
    );
  }
}
