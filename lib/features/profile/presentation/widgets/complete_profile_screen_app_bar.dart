import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/functions/is_profile_completed.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';

class CompleteProfileScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CompleteProfileScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: () {
          if (isProfileCompleted()) {
            context.router.popAndPush(const ApplyJobStepperRoute());
          } else {
            context.router.pop();
          }
        },
        child: const Icon(
          IconsJobeque.arrowleft,
        ),
      ),
      centerTitle: true,
      title: Text(
        'Complete Profile',
        style: CustomTextStyles.h4Medium.copyWith(
          color: AppColors.neutral[900],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
