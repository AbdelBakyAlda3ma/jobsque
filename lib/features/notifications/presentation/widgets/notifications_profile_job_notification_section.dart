import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_header.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'notifications_profile_job_notification_list.dart';

class NotificationsProfileJobNotificationSection extends StatelessWidget {
  const NotificationsProfileJobNotificationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(headerTitle: 'Job notification'),
        VerticalSpace(space: 12),
        NotificationsProfileJobNotificationList(),
      ],
    );
  }
}
