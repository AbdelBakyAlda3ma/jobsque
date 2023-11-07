import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/app_images.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class SearchScreenBodyNotFound extends StatelessWidget {
  const SearchScreenBodyNotFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Spacer(flex: 1),
          SvgPicture.asset(AppImages.searchNotFoundBackground),
          const VerticalSpace(space: 24),
          Text(
            'Search not found',
            textAlign: TextAlign.center,
            style: CustomTextStyles.h3Medium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const VerticalSpace(space: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Text(
              'Try searching with different keywords so we can show you',
              textAlign: TextAlign.center,
              style: CustomTextStyles.textLRegular.copyWith(
                color: AppColors.neutral[500],
              ),
            ),
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}
