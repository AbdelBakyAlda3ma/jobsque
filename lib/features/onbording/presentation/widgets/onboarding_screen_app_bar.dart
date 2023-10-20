import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/assets_logos.dart';
import '../../../../core/utils/global/custom_text_styles.dart';

class OnboardingScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const OnboardingScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(
        AssetsLogos.jobsequLogo,
        width: 81,
        height: 19,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.router.pushAndPopUntil(
              const LoginRoute(),
              predicate: (route) => false,
            );
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            'Skip',
            style: CustomTextStyles.textLRegular.copyWith(
              color: AppColors.neutral[500],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
