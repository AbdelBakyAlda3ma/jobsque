import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/app_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class NothingSavedBody extends StatelessWidget {
  const NothingSavedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(
              flex: 3,
            ),
            SvgPicture.asset(AppImages.nothingSavedBackground),
            const VerticalSpace(space: 24),
            Text(
              'Nothing has been saved yet',
              textAlign: TextAlign.center,
              style: CustomTextStyles.h3Medium
                  .copyWith(color: AppColors.neutral[900]),
            ),
            const VerticalSpace(space: 8),
            Text(
              'Press the star icon on the job you want to save.',
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
    );
  }
}
