import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/assets_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class NoNotificationScreen extends StatelessWidget {
  const NoNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Notification',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        leading: const Icon(IconsJobeque.arrowleft),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 51),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
              SvgPicture.asset(AssetsImages.noNotificationBackground),
              const VerticalSpace(space: 24),
              Text(
                'No new notifications yet',
                textAlign: TextAlign.center,
                style: CustomTextStyles.h3Medium
                    .copyWith(color: AppColors.neutral[900]),
              ),
              const VerticalSpace(space: 8),
              Text(
                'You will receive a notification if there is something on your account',
                textAlign: TextAlign.center,
                style: CustomTextStyles.textMRegular
                    .copyWith(color: AppColors.neutral[500]),
              ),
              const Spacer(
                flex: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
