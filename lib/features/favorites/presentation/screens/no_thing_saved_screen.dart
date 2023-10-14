import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/assets_images.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

@RoutePage()
class NoThingSavedScreen extends StatelessWidget {
  const NoThingSavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Saved',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        leading: const Icon(IconsJobeque.arrowleft),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
              SvgPicture.asset(AssetsImages.nothingSavedBackground),
              const VerticalSpace(space: 24),
              Text(
                'Nothing has been saved yet',
                textAlign: TextAlign.center,
                style: CustomTextStyles.h3Medium
                    .copyWith(color: AppColors.neutral[900]),
              ),
              const VerticalSpace(space: 8),
              Text(
                'Press the star icon on the job you want to save.',
                textAlign: TextAlign.center,
                style: CustomTextStyles.textMRegular
                    .copyWith(color: AppColors.neutral[500]),
              ),
              const Spacer(
                flex: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
