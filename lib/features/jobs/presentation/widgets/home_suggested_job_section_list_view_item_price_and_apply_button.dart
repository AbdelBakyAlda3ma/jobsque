import 'package:flutter/material.dart';

import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/primary_button.dart';

class HomeSuggestedJobSectionListViewItemPriceAndApplyButton
    extends StatelessWidget {
  const HomeSuggestedJobSectionListViewItemPriceAndApplyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: "\$12K-15K",
            style: CustomTextStyles.h4Medium.copyWith(color: Colors.white),
            children: <TextSpan>[
              TextSpan(
                text: '/Month',
                style: CustomTextStyles.textSMedium
                    .copyWith(color: Colors.white.withOpacity(0.5)),
              ),
            ],
          ),
        ),
        PrimaryButton.small(
          text: 'Apply now',
          onPressed: () {},
        ),
      ],
    );
  }
}
