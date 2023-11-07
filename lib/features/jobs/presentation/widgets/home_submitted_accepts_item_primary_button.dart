import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';

class HomeSubmittedAcceptedItemPrimaryButton extends StatelessWidget {
  const HomeSubmittedAcceptedItemPrimaryButton({
    super.key,
    required this.isAccepted,
  });

  final bool isAccepted;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        backgroundColor:
            isAccepted ? AppColors.success[300] : AppColors.primary[200],
        minimumSize: Size.zero, // Set this
      ),
      onPressed: () {},
      child: Text(
        isAccepted ? 'Accepted' : 'Submited',
        style: CustomTextStyles.textSRegular.copyWith(
          color: isAccepted ? AppColors.success[800] : AppColors.primary[700],
        ),
      ),
    );
  }
}
