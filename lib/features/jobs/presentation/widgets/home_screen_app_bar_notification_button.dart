import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';

class HomeScreenAppBarNotificationButton extends StatelessWidget {
  const HomeScreenAppBarNotificationButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: 48,
      child: IconButton(
        onPressed: () {
          context.router.push(const NotificationRoute());
        },
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: CircleBorder(
            side: BorderSide(color: AppColors.neutral[300]!),
          ),
        ),
        icon: Icon(
          IconsJobeque.notification,
          color: AppColors.neutral[900],
        ),
      ),
    );
  }
}
