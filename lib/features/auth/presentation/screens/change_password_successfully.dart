import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/app_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

@RoutePage()
class ChangePasswordSuccessfullyScreen extends StatelessWidget {
  const ChangePasswordSuccessfullyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            SvgPicture.asset(AppImages.passwordChangeSuccesfullyBackground),
            Text(
              'Password changed succesfully!',
              textAlign: TextAlign.center,
              style: CustomTextStyles.h3Medium
                  .copyWith(color: AppColors.neutral[900]),
            ),
            const VerticalSpace(space: 8),
            Text(
              'Your password has been changed successfully, we will let you know if there are more problems with your account',
              textAlign: TextAlign.center,
              style: CustomTextStyles.textMRegular
                  .copyWith(color: AppColors.neutral[500]),
            ),
            const Spacer(
              flex: 4,
            ),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton.large(
                text: 'Continue',
                onPressed: () {
                  context.router.pushAndPopUntil(
                    const WhichWillLaunchRoute(),
                    predicate: (route) => false,
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
