import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_list_view_item.dart';

class CompleteProfileScreenBodyListView extends StatelessWidget {
  final bool educationCompletion;
  final bool experienceCompletion;
  final bool personalDetailsCompletion;
  final bool portfolioCompletion;
  const CompleteProfileScreenBodyListView({
    super.key,
    required this.educationCompletion,
    required this.experienceCompletion,
    required this.personalDetailsCompletion,
    required this.portfolioCompletion,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          CompleteProfileListViewItem(
            title: 'Personal Details',
            subTitle: 'Full name, email, phone number, and your address',
            route: const PersonalDetailsRoute(),
            isCompleted: personalDetailsCompletion,
          ),
          const VerticalSpace(space: 20),
          CompleteProfileListViewItem(
            title: 'Education',
            subTitle:
                'Enter your educational history to be considered by the recruiter',
            route: const EducationRoute(),
            isCompleted: educationCompletion,
          ),
          const VerticalSpace(space: 20),
          CompleteProfileListViewItem(
            title: 'Experience',
            subTitle:
                'Enter your work experience to be considered by the recruiter',
            route: const ExperienceRoute(),
            isCompleted: experienceCompletion,
          ),
          const VerticalSpace(space: 20),
          CompleteProfileListViewItem(
            title: 'Portfolio',
            subTitle:
                'Create your portfolio. Applying for various types of jobs is easier.',
            route: const PortfolioRoute(),
            isCompleted: portfolioCompletion,
          ),
        ],
      ),
    );
  }
}
