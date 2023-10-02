import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/notification_dummy_list.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'notification_item.dart';

class NewNotificationListView extends StatelessWidget {
  const NewNotificationListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: ListView.separated(
            itemBuilder: ((context, index) => NotificationItem(
                  notification: notificationDummyList[index],
                )),
            separatorBuilder: ((context, index) =>
                const VerticalSpace(space: 20)),
            itemCount: notificationDummyList.length),
      ),
    );
  }
}
