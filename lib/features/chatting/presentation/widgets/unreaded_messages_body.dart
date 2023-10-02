import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/chatting/presentation/widgets/messages_search_bar.dart';
import 'package:jobseque/features/chatting/presentation/widgets/unreaded_messages_body_header.dart';
import 'package:jobseque/features/chatting/presentation/widgets/unreaded_messages_body_list_view.dart';

class UnreadedMessagesBody extends StatelessWidget {
  const UnreadedMessagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VerticalSpace(space: 8),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: MessagesSearchBar(),
        ),
        VerticalSpace(space: 24),
        UnreadedMessagesBodyheader(),
        VerticalSpace(space: 21),
        UnreadedMessagesBodyListView(),
      ],
    );
  }
}
