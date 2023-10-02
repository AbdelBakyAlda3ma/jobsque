import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

import 'custom_vertical_divider.dart';

class CustomPhoneTextFieldCustomPrefixIcon extends StatefulWidget {
  const CustomPhoneTextFieldCustomPrefixIcon({super.key});

  @override
  State<CustomPhoneTextFieldCustomPrefixIcon> createState() =>
      _CustomPhoneTextFieldCustomPrefixIconState();
}

class _CustomPhoneTextFieldCustomPrefixIconState
    extends State<CustomPhoneTextFieldCustomPrefixIcon> {
  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

  @override
  void initState() {
    countryCode =
        const CountryCode(name: 'United States', code: 'US', dialCode: '+1');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        // Show the country code picker when tapped.
        final code = await countryPicker.showPicker(context: context);
        setState(() {
          countryCode = code ?? countryCode;
          countryCode!.flagUri;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 24,
              height: 18,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    countryCode!.flagUri,
                    package: countryCode!.flagImagePackage,
                  ),
                ),
              ),
            ),
            const HorizontalSpace(space: 8),
            Icon(
              IconsJobeque.arrowdownoutline,
              color: AppColors.neutral[900],
              size: 16,
            ),
            const HorizontalSpace(space: 16),
            const CustomVerticalDivider(height: 24)
          ],
        ),
      ),
    );
  }
}
