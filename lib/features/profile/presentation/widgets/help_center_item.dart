import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import 'help_center_item_content.dart';
import 'help_center_item_title.dart';

class HelpCenterItem extends StatefulWidget {
  const HelpCenterItem({
    super.key,
  });

  @override
  State<HelpCenterItem> createState() => _HelpCenterItemState();
}

class _HelpCenterItemState extends State<HelpCenterItem> {
  bool isShownContent = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 12, vertical: isShownContent ? 12 : 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.neutral[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isShownContent = !isShownContent;
              });
            },
            child: HelpCenterItemTitle(
              showContent: isShownContent,
            ),
          ),
          isShownContent ? const HelpCenterItemContent() : const SizedBox(),
        ],
      ),
    );
  }
}
