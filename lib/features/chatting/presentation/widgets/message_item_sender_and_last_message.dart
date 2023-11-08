import 'package:flutter/cupertino.dart';
import 'package:jobseque/features/chatting/domain/entities/message_entity.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class MessageItemSenderAndLastMessage extends StatelessWidget {
  final MessageEntity message;
  const MessageItemSenderAndLastMessage({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // sender
          Text(
            message.sender,
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
                    message.lastMsg,
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
