import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/features/notifications/presentation/widgets/notification_screen_body.dart';

import '../../../../core/widgets/custom_app_bar.dart';

@RoutePage()
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Notification'),
        body: NotificationScreenBody(),
      ),
    );
  }
}
