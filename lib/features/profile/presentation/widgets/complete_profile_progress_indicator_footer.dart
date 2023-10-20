import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class CompleteProfilePercentIdicatorFooter extends StatefulWidget {
  final int completionProgressIndicator;

  const CompleteProfilePercentIdicatorFooter({
    super.key,
    required this.completionProgressIndicator,
  });

  @override
  State<CompleteProfilePercentIdicatorFooter> createState() =>
      _CompleteProfilePercentIdicatorFooterState();
}

class _CompleteProfilePercentIdicatorFooterState
    extends State<CompleteProfilePercentIdicatorFooter> {
  @override
  void didUpdateWidget(
      covariant CompleteProfilePercentIdicatorFooter oldWidget) {
    if (oldWidget.completionProgressIndicator !=
        widget.completionProgressIndicator) {
      setState(() {});
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "${widget.completionProgressIndicator}/4 Completed",
          style: CustomTextStyles.textLMedium.copyWith(
            color: AppColors.primary[500],
          ),
        ),
        const VerticalSpace(space: 8),
        Text(
          "Complete your profile before applying for a job",
          style: CustomTextStyles.textLRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
      ],
    );
  }
}
