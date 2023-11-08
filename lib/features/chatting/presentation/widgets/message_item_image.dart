import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/domain/entities/message_entity.dart';
import 'message_item_image_number_of_unreaded_msessages.dart';

class MessageItemImage extends StatelessWidget {
  final MessageEntity message;
  const MessageItemImage({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // outer container which represent the white radius
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(message.logo),
        ),
        message.isReaded
            ? const SizedBox()
            : const MessageItemImageNumberOfUnreadedMessages(),
      ],
    );
  }
}
