import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/primary_button.dart';

class HomeSuggestedJobSectionListViewItemPriceAndApplyButton
    extends StatelessWidget {
  final JobEntity job;

  const HomeSuggestedJobSectionListViewItemPriceAndApplyButton({
    super.key,
    required this.job,
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
          onPressed: () {
            context.pushRoute(
              CompleteProfileWrapperRoute(
                children: [
                  CompleteProfileOrApplyJobRoute(
                    job: job,
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
