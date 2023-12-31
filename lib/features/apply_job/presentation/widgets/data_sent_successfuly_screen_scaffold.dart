import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/app_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class DataSentSuccessfulyScreenScaffold extends StatelessWidget {
  const DataSentSuccessfulyScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
            SvgPicture.asset(AppImages.dataSentSuccessfullyBackground),
            Text(
              'Your data has been successfully sent',
              textAlign: TextAlign.center,
              style: CustomTextStyles.h3Medium
                  .copyWith(color: AppColors.neutral[900]),
            ),
            const VerticalSpace(space: 12),
            Text(
              'You will get a message from our team, about the announcement of employee acceptance',
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
                text: 'Back to home',
                onPressed: () {
                  context.router.push(const HasCurrenUserRoute());
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
