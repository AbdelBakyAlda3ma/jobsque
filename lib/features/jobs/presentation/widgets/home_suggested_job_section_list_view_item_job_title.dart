import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/assets_logos.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/horizontal_space.dart';

class HomeSuggestedJobSectionListViewItemJobTitle extends StatelessWidget {
  const HomeSuggestedJobSectionListViewItemJobTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          SvgPicture.asset(
            AssetsLogos.zoomLogo,
            height: 40,
            width: 40,
          ),
          const HorizontalSpace(space: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Designer',
                style: CustomTextStyles.h5Medium.copyWith(color: Colors.white),
              ),
              Text(
                'Zoom • United States',
                style: CustomTextStyles.textSRegular
                    .copyWith(color: AppColors.neutral[400]),
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            IconsJobeque.archiveminus,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
