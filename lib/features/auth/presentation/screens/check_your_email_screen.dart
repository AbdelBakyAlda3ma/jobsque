import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/app_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

@RoutePage()
class CheckYourEmailScreen extends StatelessWidget {
  const CheckYourEmailScreen({super.key});

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
            SvgPicture.asset(AppImages.checkYourEmailBackground),
            Text(
              'Check your Email',
              textAlign: TextAlign.center,
              style: CustomTextStyles.h3Medium
                  .copyWith(color: AppColors.neutral[900]),
            ),
            const VerticalSpace(space: 8),
            Text(
              'We have sent a reset password to your email address',
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
                text: 'Open email app',
                onPressed: () {},
              ),
            ),
            const VerticalSpace(space: 9),
          ],
        ),
      ),
    );
  }
}
