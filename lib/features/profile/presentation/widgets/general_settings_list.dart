import 'package:flutter/material.dart';

import '../../../../core/utils/global/icons_jobeque_icons.dart';
import 'general_settings_item.dart';

class GeneralSettingsList extends StatelessWidget {
  const GeneralSettingsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          GeneralSettingsItem(
            icon: IconsJobeque.profile,
            text: 'Edit Profile',
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.folderfavorit,
            text: 'Portfolio',
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.global,
            text: 'Langauge',
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.notification,
            text: 'Notification',
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.lock,
            text: 'Login and security',
          ),
        ],
      ),
    );
  }
}
