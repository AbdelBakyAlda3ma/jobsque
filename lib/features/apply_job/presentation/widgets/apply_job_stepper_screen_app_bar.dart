import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';

class ApplyJobStepperScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ApplyJobStepperScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        IconsJobeque.arrowleft,
      ),
      centerTitle: true,
      title: Text(
        'Apply Job',
        style: CustomTextStyles.h4Medium.copyWith(
          color: AppColors.neutral[900],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
