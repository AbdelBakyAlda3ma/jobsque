import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_recent_job_section.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section.dart';
import 'home_screen_search_text_field.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
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
                  const SliverToBoxAdapter(
                    child: HomeSuggestedJobSection(),
                  ),
                ];
              }),
              body: const HomeRecentJobSection(),
            ),
          ),
        ],
      ),
    );
  }
}
