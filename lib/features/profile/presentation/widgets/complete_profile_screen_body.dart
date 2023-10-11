import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_list_view_item.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_percent_indicator.dart';

import 'complete_profile_progress_indicator_footer.dart';

class CompleteProfileScreenBody extends StatelessWidget {
  const CompleteProfileScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const VerticalSpace(space: 16),
            const CompleteProfilePercentIndicator(),
            const VerticalSpace(space: 20),
            const CompleteProfilePercentIdicatorFooter(),
            const VerticalSpace(space: 34),
            Expanded(
              child: ListView(
                children: const [
                  CompleteProfileListViewItem(
                    title: 'Personal Details',
                    subTitle:
                        'Full name, email, phone number, and your address',
                    route: PersonalDetailsRoute(),
                  ),
                  VerticalSpace(space: 20),
                  CompleteProfileListViewItem(
                    title: 'Education',
                    subTitle:
                        'Enter your educational history to be considered by the recruiter',
                    route: EducationRoute(),
                  ),
                  VerticalSpace(space: 20),
                  CompleteProfileListViewItem(
                    title: 'Experience',
                    subTitle:
                        'Enter your work experience to be considered by the recruiter',
                    route: ExperienceRoute(),
                  ),
                  VerticalSpace(space: 20),
                  CompleteProfileListViewItem(
                    title: 'Portfolio',
                    subTitle:
                        'Create your portfolio. Applying for various types of jobs is easier.',
                    route: PortfolioRoute(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
