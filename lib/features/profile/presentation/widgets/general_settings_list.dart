import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';

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
            route: PersonalDetailsRoute(),
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.folderfavorit,
            text: 'Portfolio',
            route: PortfolioRoute(),
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.global,
            text: 'Langauge',
            route: LanguageRoute(),
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.notification,
            text: 'Notification',
            route: NotificationsProfileRoute(),
          ),
          GeneralSettingsItem(
            icon: IconsJobeque.lock,
            text: 'Login and security',
            route: LoginAndSecurityProfileRoute(),
          ),
        ],
      ),
    );
  }
}
