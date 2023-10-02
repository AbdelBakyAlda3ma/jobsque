import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class MessageItemImageNumberOfUnreadedMessages extends StatelessWidget {
  const MessageItemImageNumberOfUnreadedMessages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),

        // the inner container which has numbers of unreaded messages
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: AppColors.primary[500],
          ),
          child: SizedBox(
            width: 15,
            height: 15,
            child: Text(
              '1',
              textAlign: TextAlign.center,
              style: CustomTextStyles.textXSMedium.copyWith(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
