import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/text_form_field_of_email.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class EmailAddressProfileScreenBody extends StatelessWidget {
  const EmailAddressProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpace(space: 24),
          Text(
            "Main e-mail address",
            style: CustomTextStyles.textLRegular.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
          const VerticalSpace(space: 8),
          const TextFormFieldOfEmail(),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: PrimaryButton.large(onPressed: () {}, text: 'Save'),
          ),
          const VerticalSpace(space: 9),
        ],
      ),
    );
  }
}
