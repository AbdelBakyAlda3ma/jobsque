import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import 'messages_body_list_view.dart';
import 'messages_search_bar.dart';

class MessagesBody extends StatelessWidget {
  const MessagesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          MessagesSearchBar(),
          VerticalSpace(space: 28),
          MessagesBodyListView()
        ],
      ),
    );
  }
}
