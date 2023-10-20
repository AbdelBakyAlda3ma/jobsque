import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/personal_details_screen_body_change_photo.dart';
import 'package:jobseque/features/profile/presentation/widgets/personal_details_screen_body_form.dart';

class PersonalDetailsScreenBody extends StatelessWidget {
  const PersonalDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                VerticalSpace(space: 18),
                PersonalDetailsScreenBodyChangePhoto(),
                VerticalSpace(space: 25),
                PersonalDetailsScreenBodyForm(),
                VerticalSpace(space: 9),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
