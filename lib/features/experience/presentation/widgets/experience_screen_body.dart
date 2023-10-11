import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_container_of_form.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_showing_company_container.dart';

class ExperienceScreenBody extends StatelessWidget {
  const ExperienceScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverPadding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: Column(
              children: [
                ExperienceScreenBodyContainerOfForm(),
                VerticalSpace(space: 24),
                ExperienceScreenBodyShowingCompanyContainer(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
