import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_phoen_text_field.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/phone_number_profile_on_off_switch_button.dart';
import 'package:jobseque/features/profile/presentation/widgets/phone_number_profile_save_button.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class PhoneNumberProfileScreenBody extends StatefulWidget {
  const PhoneNumberProfileScreenBody({super.key});

  @override
  State<PhoneNumberProfileScreenBody> createState() =>
      _PhoneNumberProfileScreenBodyState();
}

class _PhoneNumberProfileScreenBodyState
    extends State<PhoneNumberProfileScreenBody> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpace(space: 24),
          Text(
            "Main phone number",
            style: CustomTextStyles.textLRegular.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const VerticalSpace(space: 8),
          const CustomPhoneTextField(),
          const VerticalSpace(space: 20),
          const PhoneNumberProfileOnOffSwitchButton(),
          const Spacer(),
          const PhoneNumberProfileSaveButton(),
          const VerticalSpace(space: 9),
        ],
      ),
    );
  }
}
