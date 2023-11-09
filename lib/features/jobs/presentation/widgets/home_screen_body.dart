import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_recent_job_section.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_submitted_jobs_section.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section.dart';
import 'home_screen_search_text_field.dart';

class HomeScreenBody extends StatelessWidget {
  final List<JobEntity> jobsList;
  const HomeScreenBody({
    super.key,
    required this.jobsList,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const HomeScreenSearchTextField(),
          Expanded(
            child: NestedScrollView(
              headerSliverBuilder: ((context, innerBoxIsScrolled) {
                return [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        const HomeSubmittedJobsSection(),
                        HomeSuggestedJobSection(
                          jobsList: jobsList,
                        ),
                      ],
                    ),
                  ),
                ];
              }),
              body: HomeRecentJobSection(
                jobsList: jobsList,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
