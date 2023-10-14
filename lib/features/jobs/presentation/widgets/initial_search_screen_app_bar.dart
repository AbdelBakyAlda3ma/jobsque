import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
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
              context.router.pop();
            },
            child: const Icon(
              IconsJobeque.arrowleft,
            ),
          ),
          const HorizontalSpace(space: 12),
          Expanded(
            child: CustomSearchTextField(
              readOnly: true,
              hintText: 'Type something...',
              onTap: () {
                context.router.popAndPush(const SearchRoute());
              },
            ),
          ),
        ],
      ),
    );
  }
}
