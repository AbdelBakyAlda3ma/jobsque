import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/notifications/presentation/widgets/new_notification_header.dart';
import 'package:jobseque/features/notifications/presentation/widgets/yesterday_notification_header.dart';
import 'package:jobseque/features/notifications/presentation/widgets/yesterday_notification_list_view.dart';

import 'new_notification_list_view.dart';

class NotificationScreenBody extends StatelessWidget {
  const NotificationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        NewNotificationHeader(),
        VerticalSpace(space: 21),
        NewNotificationListView(),
        YesterdayNotificationHeader(),
        VerticalSpace(space: 21),
        YesterdayNotificationListView()
      ],
    );
  }
}
