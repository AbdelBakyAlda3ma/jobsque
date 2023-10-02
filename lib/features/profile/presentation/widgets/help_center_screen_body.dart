import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_search_text_field.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'help_center_list_view.dart';

class HelpCenterScreenBody extends StatelessWidget {
  const HelpCenterScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          CustomSearchTextField(
            hintText: 'What can we help?',
          ),
          VerticalSpace(space: 28),
          HelpCenterListView(),
        ],
      ),
    );
  }
}
