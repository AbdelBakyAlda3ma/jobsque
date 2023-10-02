import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content_upload_other_file_upload_area.dart';

class UploadPortfolioStepContentUploadOtherFile extends StatelessWidget {
  const UploadPortfolioStepContentUploadOtherFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Other File',
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 12),
        const UploadPortfolioStepContentUploadOtherFileUploadArea(),
      ],
    );
  }
}
