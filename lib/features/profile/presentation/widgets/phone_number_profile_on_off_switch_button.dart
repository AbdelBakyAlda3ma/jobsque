import 'package:flutter/material.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/custom_switch.dart';

class PhoneNumberProfileOnOffSwitchButton extends StatefulWidget {
  const PhoneNumberProfileOnOffSwitchButton({super.key});

  @override
  State<PhoneNumberProfileOnOffSwitchButton> createState() =>
      _PhoneNumberProfileOnOffSwitchButtonState();
}

class _PhoneNumberProfileOnOffSwitchButtonState
    extends State<PhoneNumberProfileOnOffSwitchButton> {
  bool switchValue = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            "Use the phone number to reset your password",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
            style: CustomTextStyles.textMRegular.copyWith(
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
    );
  }
}
