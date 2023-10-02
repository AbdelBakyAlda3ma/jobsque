import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_header.dart';
import '../../../../core/widgets/vertical_space.dart';
import 'notifications_profile_other_notiffcation_list.dart';

class NotificationsProfileOtherNotificationSection extends StatelessWidget {
  const NotificationsProfileOtherNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomHeader(headerTitle: 'Other notification'),
        VerticalSpace(space: 12),
        NotificationsProfileOtherNotificationList(),
      ],
    );
  }
}
