import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/supported_langauages.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/widgets/custom_radio_button.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

import 'package:dash_flags/dash_flags.dart';

class LanguageItem extends StatelessWidget {
  final countryPicker = const FlCountryCodePicker();

  final CountryModel country;
  final bool isSelected;

  const LanguageItem({
    super.key,
    required this.country,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              const HorizontalSpace(space: 12),
              CountryFlag(
                country: Country.fromCode(country.code),
                height: 20,
              ),
              const HorizontalSpace(space: 12),
              Text(
                country.language,
                style: CustomTextStyles.textLMedium,
              ),
              const Spacer(),
              CustomRadioButton(isSelected: isSelected)
            ],
          ),
        ),
        Divider(
          thickness: 1,
          color: AppColors.neutral[300],
          height: 0,
        )
      ],
    );
  }
}
