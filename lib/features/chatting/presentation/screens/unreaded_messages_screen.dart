import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/features/chatting/presentation/widgets/custom_messages_app_bar.dart';
import 'package:jobseque/features/chatting/presentation/widgets/unreaded_messages_body.dart';

@RoutePage()
class UnreadedMessagesScreen extends StatelessWidget {
  const UnreadedMessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomMessagesAppBar(),
        body: UnreadedMessagesBody(),
      ),
    );
  }
}
