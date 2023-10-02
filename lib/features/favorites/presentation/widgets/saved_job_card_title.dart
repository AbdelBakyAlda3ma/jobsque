import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_show_bottom_sheet_button.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/assets_logos.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/horizontal_space.dart';

class SavedJobCardTitle extends StatelessWidget {
  const SavedJobCardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      height: 45,
      width: double.maxFinite,
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsLogos.twitterLogo,
            height: 40,
            width: 40,
          ),
          const HorizontalSpace(space: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Designer',
                style: CustomTextStyles.h5Medium
                    .copyWith(color: AppColors.neutral[900]),
              ),
              Text(
                'Twitter • Jakarta, Indonesia ',
                style: CustomTextStyles.textSRegular
                    .copyWith(color: AppColors.neutral[700]),
              ),
            ],
          ),
          const Spacer(),
          const SavedJobShowBottomSheetButton(),
        ],
      ),
    );
  }
}
