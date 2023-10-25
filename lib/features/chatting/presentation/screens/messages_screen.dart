import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/chatting/presentation/widgets/messages_body.dart';

import '../widgets/custom_messages_app_bar.dart';

@RoutePage()
class MessagesScreen extends StatelessWidget {
  static String routeName = MessagesRoute.name;

  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomMessagesAppBar(),
        body: const MessagesBody(),
        bottomNavigationBar: CustomBottomNavigationBar(
          routeName: routeName,
        ),
      ),
    );
  }
}
