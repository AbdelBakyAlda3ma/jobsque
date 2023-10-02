import 'package:flutter/material.dart';

import '../../../../core/utils/global/assets_logos.dart';
import 'message_item_image_number_of_unreaded_msessages.dart';

class MessageItemImage extends StatelessWidget {
  final bool isUnreaded = true;
  const MessageItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // outer container which represent the white radius
        CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage(AssetsLogos.danaLogo),
        ),
        isUnreaded
            ? const MessageItemImageNumberOfUnreadedMessages()
            : const SizedBox(),
      ],
    );
  }
}
