import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  final void Function()? onPressed;
  const CustomErrorWidget({
    super.key,
    required this.errorMessage,
    this.onPressed,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          errorMessage,
          textAlign: TextAlign.center,
          style: CustomTextStyles.h3Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 10),
        const Icon(
          Icons.error_outline,
          size: 60,
        ),
        const VerticalSpace(space: 40),
        PrimaryButton.large(
          text: 'Try again',
          onPressed: onPressed,
        ),
      ],
    );
  }
}
