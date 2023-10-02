import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/presentation/widgets/messages_body.dart';

import '../widgets/custom_messages_app_bar.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomMessagesAppBar(),
        body: MessagesBody(),
      ),
    );
  }
}
