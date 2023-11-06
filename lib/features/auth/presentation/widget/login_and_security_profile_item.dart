import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class LoginAndSecuriryProfileItem extends StatelessWidget {
  final String text;
  final String? valueText;
  final PageRouteInfo<dynamic>? route;

  const LoginAndSecuriryProfileItem({
    super.key,
    required this.text,
    this.valueText,
    this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            if (route != null) {
              context.router.push(route!);
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: CustomTextStyles.textLRegular.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                const Spacer(),
                valueText != null
                    ? Text(
                        valueText!,
                        style: CustomTextStyles.textMRegular.copyWith(
                          color: AppColors.neutral[500],
                        ),
                      )
                    : const SizedBox(),
                const HorizontalSpace(space: 12),
                Icon(
                  IconsJobeque.arrowright,
                  size: 16,
                  color: AppColors.neutral[900],
                ),
              ],
            ),
          ),
        ),
        Divider(
          height: 0,
          thickness: 1,
          color: AppColors.neutral[200],
        ),
      ],
    );
  }
}
