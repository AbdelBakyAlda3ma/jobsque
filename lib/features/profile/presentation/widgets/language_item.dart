import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

import 'package:dash_flags/dash_flags.dart';

class LanguageItem extends StatelessWidget {
  final countryPicker = const FlCountryCodePicker();

  final String countryCode;
  // final String flagImage;
  // final String? package;

  const LanguageItem({
    super.key,
    required this.countryCode,
    // required this.flagImage,
    // this.package,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // LanguageItemFlagImage(flagImage: flagImage, package: package),
        const HorizontalSpace(space: 12),
        CountryFlag(
          country: Country.fromCode(countryCode),
          height: 20,
        ),
        LanguageFlag(language: Language.fromCode(countryCode))
      ],
    );
  }
}
