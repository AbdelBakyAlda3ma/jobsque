import 'package:flutter/material.dart';
import 'package:jobseque/core/strings/dummy_string_data.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class TermsAndConditionsScreenBody extends StatelessWidget {
  const TermsAndConditionsScreenBody({super.key});

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
                  'Lorem ipsum dolor',
                  style: CustomTextStyles.h4Medium.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                const VerticalSpace(space: 6),
                // first paragraph
                Text(
                  kTermsAndConditionsFirstParagraph,
                  style: CustomTextStyles.textMRegular.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
                const VerticalSpace(space: 18),
                // second title
                Text(
                  'Lorem ipsum dolor',
                  style: CustomTextStyles.h4Medium.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                const VerticalSpace(space: 6),
                // second paragraph
                Text(
                  kTermsAndConditionsSecondtParagraph,
                  style: CustomTextStyles.textMRegular.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
                const VerticalSpace(space: 12),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
                  color: AppColors.neutral[100],
                  child: Text(
                    kTermsAndConditionsHighlightedParagraph,
                    style: CustomTextStyles.textMRegular.copyWith(
                      color: AppColors.neutral[500],
                    ),
                  ),
                ),
                const VerticalSpace(space: 12),
                Text(
                  kTermsAndConditionsLastParagraph,
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
