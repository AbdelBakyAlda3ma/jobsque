import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/assets_logos.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';

class ExperienceScreenBodyShowingCompanyContainer extends StatelessWidget {
  const ExperienceScreenBodyShowingCompanyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.neutral[300]!),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage(
              AssetsLogos.experienceLogo,
            ),
          ),
          const HorizontalSpace(space: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Senior UI/UX Designer',
                  style: CustomTextStyles.textLMedium.copyWith(
                    color: AppColors.neutral[900],
                  ),
                ),
                Text(
                  'Remote • GrowUp Studio',
                  style: CustomTextStyles.textMRegular.copyWith(
                    color: AppColors.neutral[500],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '2019 - 2022',
                        style: CustomTextStyles.textMRegular.copyWith(
                          color: AppColors.neutral[400],
                        ),
                      ),
                      Icon(
                        IconsJobeque.edit,
                        size: 24,
                        color: AppColors.primary[500],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
