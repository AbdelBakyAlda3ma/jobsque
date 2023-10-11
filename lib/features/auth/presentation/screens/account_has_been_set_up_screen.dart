import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/widgets/which_will_launch_widget.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/assets_images.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/vertical_space.dart';

class AccountHasBeenSetUpScreen extends StatelessWidget {
  const AccountHasBeenSetUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(IconsJobeque.arrowleft),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            SvgPicture.asset(AssetsImages.accountHasBeenSetUpBackground),
            Text(
              'Your account has been set up!',
              textAlign: TextAlign.center,
              style: CustomTextStyles.h3Medium
                  .copyWith(color: AppColors.neutral[900]),
            ),
            const VerticalSpace(space: 8),
            Text(
              'We have customized feeds according to your preferences',
              textAlign: TextAlign.center,
              style: CustomTextStyles.textMRegular
                  .copyWith(color: AppColors.neutral[500]),
            ),
            const Spacer(
              flex: 7,
            ),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton.large(
                text: 'Get Started',
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const WhichWillLaunchWidget(),
                    ),
                    (route) => false,
                  );
                },
              ),
            ),
            const VerticalSpace(space: 9),
          ],
        ),
      ),
    );
  }
}
