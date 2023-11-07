import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/domain/entities/message_entity.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class MessageItemTime extends StatelessWidget {
  final MessageEntity message;
  const MessageItemTime({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      top: 2,
      child: Text(
        message.time,
        style: CustomTextStyles.textSRegular.copyWith(
          color: message.isReaded
              ? AppColors.neutral[500]
              : AppColors.primary[500],
        ),
      ),
    );
  }
}
