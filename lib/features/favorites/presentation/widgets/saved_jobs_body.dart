import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_body_deader.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_jobs_body_list_view.dart';

class SavedJobsScreenBody extends StatelessWidget {
  const SavedJobsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SavdedJobsBodyHeader(),
        VerticalSpace(space: 25),
        SavedJobsBodyListView(),
      ],
    );
  }
}
