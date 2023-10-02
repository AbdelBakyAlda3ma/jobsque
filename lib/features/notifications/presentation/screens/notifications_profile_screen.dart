import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/notifications/presentation/widgets/notifications_profile_screen_body.dart';

class NotificationsProfileScreen extends StatelessWidget {
  const NotificationsProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Notification'),
        body: NotificationsProfileScreenBody(),
      ),
    );
  }
}
