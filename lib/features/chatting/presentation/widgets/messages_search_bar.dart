import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_search_text_field.dart';
import '../../../../core/widgets/horizontal_space.dart';
import 'messages_filters_show_bottom_sheet_button.dart';

class MessagesSearchBar extends StatelessWidget {
  const MessagesSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomSearchTextField(
            hintText: 'Search messages....',
          ),
        ),
        HorizontalSpace(space: 12),
        MessagesFiltersShowBottomSheetButton(),
      ],
    );
  }
}
