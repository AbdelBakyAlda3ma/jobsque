import 'package:flutter/material.dart';
import 'package:jobseque/features/favorites/presentation/widgets/saved_job_card.dart';
import '../../../../core/widgets/vertical_space.dart';

class SavedJobsBodyListView extends StatelessWidget {
  const SavedJobsBodyListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          itemBuilder: ((context, index) => const SavedJobCard()),
          separatorBuilder: (context, index) => const VerticalSpace(space: 16),
          itemCount: 20,
        ),
      ),
    );
  }
}
