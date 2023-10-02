import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import 'job_card.dart';
import '../../../../core/widgets/vertical_space.dart';

class HomeRecentJobSectionListView extends StatelessWidget {
  final List<JobEntity> allJobList;
  const HomeRecentJobSectionListView({
    super.key,
    required this.allJobList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: allJobList.length,
          itemBuilder: (context, index) => JobCard(
            job: allJobList[index],
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const VerticalSpace(space: 20),
        ),
      ),
    );
  }
}
