import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_recent_job_shimmer.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_body_shimmer_search.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_shimmer.dart';

class HomeScreenBodyShimmer extends StatelessWidget {
  const HomeScreenBodyShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          VerticalSpace(space: 28),
          HomeScreenBodyShimmerSearch(),
          VerticalSpace(space: 16),
          HomeSuggestedJobShimmer(),
          VerticalSpace(space: 24),
          HomeRecentJobShimmer()
        ],
      ),
    );
  }
}
