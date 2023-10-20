import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_percent_indicator_section.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_body_block_listener.dart';

class CompleteProfileScreenBody extends StatelessWidget {
  const CompleteProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VerticalSpace(space: 16),
            CompleteProfilePercentIndicatorSection(),
            VerticalSpace(space: 34),
            CompleteProfileScreenBodyBlocListener(),
          ],
        ),
      ),
    );
  }
}
