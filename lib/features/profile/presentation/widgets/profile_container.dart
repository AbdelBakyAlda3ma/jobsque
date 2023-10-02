import 'package:flutter/material.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_about.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_avatar.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_info.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_name_and_title.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/widgets/vertical_space.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: AppColors.primary[100],
              height: 110,
            ),
            const VerticalSpace(space: 52),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Column(
                children: [
                  ProfileNameAndTilte(),
                  VerticalSpace(space: 24),
                  ProfileInfo(),
                  VerticalSpace(space: 24),
                  ProfileAbout()
                ],
              ),
            )
          ],
        ),
        const ProfileAvatar()
      ],
    );
  }
}
