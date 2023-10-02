import 'package:flutter/material.dart';
import 'package:jobseque/core/strings/dummy_string_data.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class PrivacyPolicyScreenBody extends StatelessWidget {
  const PrivacyPolicyScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const VerticalSpace(space: 18),
                // firs title
                Text(
                  'Your privacy is important',
                  style: CustomTextStyles.h4Medium.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                const VerticalSpace(space: 6),
                // first paragraph
                Text(
                  kPrivacyPolicyFirsParagraph,
                  style: CustomTextStyles.textMRegular.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
                const VerticalSpace(space: 12),
                // seconed paragraph
                Text(
                  kPrivacyPolicySecondParagraph,
                  style: CustomTextStyles.textMRegular.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
                const VerticalSpace(space: 24),
                // second title
                Text(
                  'Data controllers and contract partners',
                  style: CustomTextStyles.h4Medium.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                const VerticalSpace(space: 6),
                Text(
                  kPrivacyPolicyLastParagraph,
                  style: CustomTextStyles.textMRegular.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
