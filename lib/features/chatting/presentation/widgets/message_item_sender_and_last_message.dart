import 'package:flutter/cupertino.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class MessageItemSenderAndLastMessage extends StatelessWidget {
  const MessageItemSenderAndLastMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // sender
          Text(
            'Dana',
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.textLMedium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const VerticalSpace(space: 4),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  // last message
                  child: Text(
                    'Thank you for your attention!',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.textSRegular.copyWith(
                      color: AppColors.neutral[500],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
