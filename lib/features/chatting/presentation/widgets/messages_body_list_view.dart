import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/dummy_messages_list.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'message_item.dart';

class MessagesBodyListView extends StatelessWidget {
  const MessagesBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => MessageItem(
          message: messagesList[index],
        ),
        separatorBuilder: (context, index) => const VerticalSpace(space: 20),
        itemCount: messagesList.length,
      ),
    );
  }
}
