import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/screens/search_screen.dart';

import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/custom_search_text_field.dart';
import '../../../../core/widgets/horizontal_space.dart';

class InitialSearchScreenAppBar extends StatelessWidget {
  const InitialSearchScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context, true);
            },
            child: const Icon(
              IconsJobeque.arrowleft,
            ),
          ),
          const HorizontalSpace(space: 12),
          Expanded(
            child: CustomSearchTextField(
              hintText: 'Type something...',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
