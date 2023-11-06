import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

class OtherSettingsItem extends StatelessWidget {
  final String text;
  final PageRouteInfo<dynamic>? route;

  const OtherSettingsItem({
    super.key,
    required this.text,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route != null) {
          context.router.push(route!);
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(
          bottom: 4,
        ),
        child: SizedBox(
          height: 49,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: CustomTextStyles.textLRegular.copyWith(
                      color: AppColors.neutral[900],
                    ),
                  ),
                  Icon(
                    IconsJobeque.arrowright,
                    size: 16,
                    color: AppColors.neutral[900],
                  ),
                ],
              ),
              const VerticalSpace(space: 14),
              Divider(
                height: 0,
                thickness: 1,
                color: AppColors.neutral[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
