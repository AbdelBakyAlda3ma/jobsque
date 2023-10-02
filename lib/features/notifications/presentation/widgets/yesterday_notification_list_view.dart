import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/notification_dummy_list.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import 'notification_item.dart';

class YesterdayNotificationListView extends StatelessWidget {
  const YesterdayNotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
            itemBuilder: (context, index) => NotificationItem(
                  notification: notificationAppDummyList[index],
                ),
            separatorBuilder: (context, index) =>
                const VerticalSpace(space: 16),
            itemCount: notificationAppDummyList.length),
      ),
    );
  }
}
