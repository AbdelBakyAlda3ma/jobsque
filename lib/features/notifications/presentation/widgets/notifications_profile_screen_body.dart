import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/notifications/presentation/widgets/notifications_profile_other_notification_section.dart';

import 'notifications_profile_job_notification_section.dart';

class NotificationsProfileScreenBody extends StatefulWidget {
  const NotificationsProfileScreenBody({super.key});

  @override
  State<NotificationsProfileScreenBody> createState() =>
      _NotificationsProfileScreenBodyState();
}

class _NotificationsProfileScreenBodyState
    extends State<NotificationsProfileScreenBody> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          NotificationsProfileJobNotificationSection(),
          VerticalSpace(space: 32),
          NotificationsProfileOtherNotificationSection(),
          VerticalSpace(space: 34),
        ],
      ),
    );
  }
}
