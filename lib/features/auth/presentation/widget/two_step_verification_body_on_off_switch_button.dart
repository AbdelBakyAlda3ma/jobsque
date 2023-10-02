import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_switch.dart';

class TwoStepVerificationBodyOnOffSwitchButton extends StatefulWidget {
  const TwoStepVerificationBodyOnOffSwitchButton({super.key});

  @override
  State<TwoStepVerificationBodyOnOffSwitchButton> createState() =>
      _TwoStepVerificationBodyOnOffSwitchButtonState();
}

class _TwoStepVerificationBodyOnOffSwitchButtonState
    extends State<TwoStepVerificationBodyOnOffSwitchButton> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.neutral[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Secure your account with two-step verification",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: CustomTextStyles.textLMedium.copyWith(
                color: AppColors.neutral[500],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: CustomSwitch(
                value: switchValue,
                onChanged: (value) {
                  setState(() {
                    switchValue = value;
                  });
                }),
          )
        ],
      ),
    );
  }
}
