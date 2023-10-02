import 'package:flutter/material.dart';

import 'notifications_profile_item.dart';

class NotificationsProfileJobNotificationList extends StatelessWidget {
  const NotificationsProfileJobNotificationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          NotificationsProfileItem(text: 'Your Job Search Alert'),
          NotificationsProfileItem(text: 'Job Application Update'),
          NotificationsProfileItem(text: 'Job Application Reminders'),
          NotificationsProfileItem(text: 'Jobs You May Be Interested In'),
          NotificationsProfileItem(text: 'Job Seeker Updates'),
        ],
      ),
    );
  }
}
