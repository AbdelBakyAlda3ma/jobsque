import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/assets_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class NoApplicationWereRejected extends StatelessWidget {
  const NoApplicationWereRejected({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(
            flex: 3,
          ),
          SvgPicture.asset(AssetsImages.noApplicationRejectedBackground),
          Text(
            'No applications were rejected',
            textAlign: TextAlign.center,
            style: CustomTextStyles.h3Medium
                .copyWith(color: AppColors.neutral[900]),
          ),
          const VerticalSpace(space: 12),
          Text(
            'If there is an application that is rejected by the company it will appear here',
            textAlign: TextAlign.center,
            style: CustomTextStyles.textMRegular.copyWith(
              color: AppColors.neutral[500],
            ),
          ),
          const Spacer(
            flex: 7,
          ),
        ],
      ),
    );
  }
}
