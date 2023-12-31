import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/features/profile/presentation/widgets/other_settings_item.dart';

class OtherSettingsList extends StatelessWidget {
  const OtherSettingsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          OtherSettingsItem(text: 'Accesibility'),
          OtherSettingsItem(
            text: 'Help Center',
            route: HelpCenterRoute(),
          ),
          OtherSettingsItem(
            text: 'Terms & Conditions',
            route: TermsAndConditinosRoute(),
          ),
          OtherSettingsItem(
            text: 'Privacy Policy',
            route: PrivacyPolicyRoute(),
          ),
        ],
      ),
    );
  }
}
