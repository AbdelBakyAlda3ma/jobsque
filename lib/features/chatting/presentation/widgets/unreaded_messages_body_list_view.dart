import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/dummy_messages_list.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'message_item.dart';

class UnreadedMessagesBodyListView extends StatelessWidget {
  const UnreadedMessagesBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          itemBuilder: (context, index) => MessageItem(
            message: unReadedMsg[index],
          ),
          separatorBuilder: (context, index) => const VerticalSpace(space: 20),
          itemCount: unReadedMsg.length,
        ),
      ),
    );
  }
}
