import 'package:flutter/material.dart';

import 'notifications_profile_item.dart';

class NotificationsProfileOtherNotificationList extends StatelessWidget {
  const NotificationsProfileOtherNotificationList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          NotificationsProfileItem(text: 'Show Profile'),
          NotificationsProfileItem(text: 'All Message'),
          NotificationsProfileItem(text: 'Message Nudges'),
        ],
      ),
    );
  }
}
