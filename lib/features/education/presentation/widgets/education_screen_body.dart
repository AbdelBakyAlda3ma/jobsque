import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_container_of_form.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_showing_university_container.dart';

class EducationScreenBody extends StatelessWidget {
  const EducationScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                EducationScreenBodyContainerOfForm(),
                VerticalSpace(space: 24),
                EducationScreenBodyShowingUniversityContainer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
