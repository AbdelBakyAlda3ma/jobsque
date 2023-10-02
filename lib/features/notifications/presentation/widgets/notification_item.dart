import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import '../../../../core/dummy/notification_dummy_list.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/widgets/horizontal_space.dart';
import 'notification_item_image.dart';
import 'notification_item_time.dart';
import 'notification_item_title_and_overview.dart';

class NotificationItem extends StatelessWidget {
  final NotificationModel notification;
  const NotificationItem({
    super.key,
    required this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          // position of time
          NotificationItemTime(
            receivedTime: notification.receivedTime,
            isReaded: notification.isReaded,
          ),
          Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    // clounm of notification image
                    NotificationItemImage(
                      image: notification.image,
                    ),
                    const HorizontalSpace(space: 11),
                    NotificationItemTitleAndOverview(
                      name: notification.name,
                      overView: notification.overView,
                    ),
                  ],
                ),
              ),
              const VerticalSpace(space: 12),
              Divider(
                height: 0,
                color: AppColors.neutral[200],
                thickness: 1,
              )
            ],
          ),
        ],
      ),
    );
  }
}
