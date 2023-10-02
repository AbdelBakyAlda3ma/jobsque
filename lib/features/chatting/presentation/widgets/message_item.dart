import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/chatting/presentation/widgets/message_item_image.dart';
import 'package:jobseque/features/chatting/presentation/widgets/message_item_sender_and_last_message.dart';
import 'package:jobseque/features/chatting/presentation/widgets/message_item_time.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/widgets/horizontal_space.dart';

class MessageItem extends StatelessWidget {
  final bool isUnread = true;

  const MessageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Stack(
        children: [
          // position of time
          const MessageItemTime(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MessageItemImage(),
              const HorizontalSpace(space: 11),
              Expanded(
                child: Column(
                  children: [
                    const Expanded(
                      child: Row(
                        children: [
                          MessageItemSenderAndLastMessage(),
                        ],
                      ),
                    ),
                    const VerticalSpace(space: 12),
                    Divider(
                      height: 0,
                      color: AppColors.neutral[200],
                      thickness: 1,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
