import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

import 'general_settings_item_icon.dart';

class GeneralSettingsItem extends StatelessWidget {
  final String text;
  final IconData icon;

  const GeneralSettingsItem({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 4,
      ),
      child: SizedBox(
        height: 68,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GeneralSettingsItemIcon(
                    icon: icon,
                  ),
                  const HorizontalSpace(space: 12),
                  Text(
                    text,
                    style: CustomTextStyles.textLRegular.copyWith(
                      color: AppColors.neutral[900],
                    ),
                  ),
                  const Spacer(),
                  Icon(
                    IconsJobeque.arrowright,
                    size: 16,
                    color: AppColors.neutral[900],
                  ),
                ],
              ),
            ),
            Divider(
              height: 0,
              thickness: 1,
              color: AppColors.neutral[200],
            ),
          ],
        ),
      ),
    );
  }
}
