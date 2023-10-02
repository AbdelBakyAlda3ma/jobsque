import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_vertical_divider.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_info_applied.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_info_contacted.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_info_reviewed.dart';

import '../../../../core/utils/global/app_colors.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.neutral[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProfileInfoApplied(),
          CustomVerticalDivider(height: 44),
          ProfileInfoReviewed(),
          CustomVerticalDivider(height: 44),
          ProfileInfoContacted(),
        ],
      ),
    );
  }
}
