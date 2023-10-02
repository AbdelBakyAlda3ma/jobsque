import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/assets_logos.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/horizontal_space.dart';
import '../../../../core/widgets/vertical_space.dart';

class HomeSubmitedAcceptedItem extends StatelessWidget {
  final bool isAccepted = true;

  const HomeSubmitedAcceptedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary[100],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 61,
        child: Row(
          children: [
            Column(
              children: [
                SvgPicture.asset(AssetsLogos.twitterLogo),
              ],
            ),
            const HorizontalSpace(space: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Twitter',
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.textLMedium.copyWith(
                      color: AppColors.neutral[900],
                    ),
                  ),
                  const VerticalSpace(space: 4),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Text(
                            isAccepted
                                ? 'You have been accepted for the selection interview'
                                : 'Waiting to be selected by the twitter team',
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.textSRegular.copyWith(
                              color: AppColors.neutral[700],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const HorizontalSpace(space: 8),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 14),
                    backgroundColor: isAccepted
                        ? AppColors.success[300]
                        : AppColors.primary[200],
                    minimumSize: Size.zero, // Set this
                  ),
                  onPressed: () {},
                  child: Text(
                    isAccepted ? 'Accepted' : 'Submited',
                    style: CustomTextStyles.textSRegular.copyWith(
                      color: isAccepted
                          ? AppColors.success[800]
                          : AppColors.primary[700],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
