import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/core/widgets/custom_bottom_sheet_item.dart';

@RoutePage()
class MessagesFiltersBottomSheetWidget extends StatelessWidget {
  const MessagesFiltersBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Message filters',
            style: CustomTextStyles.h5Medium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const VerticalSpace(space: 16),
          CustomBottomSheetItem(
            text: 'Unread',
            onTap: () {
              context.router.push(
                const UnreadedMessagesRoute(),
              );
            },
          ),
          const VerticalSpace(space: 12),
          const CustomBottomSheetItem(
            text: 'Spam',
          ),
          const VerticalSpace(space: 12),
          const CustomBottomSheetItem(
            text: 'Archived',
          ),
          const VerticalSpace(space: 8),
        ],
      ),
    );
  }
}
