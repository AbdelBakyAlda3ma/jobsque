import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/shimmer_skeleton_component.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_shimmer_job_card.dart';
import 'package:shimmer/shimmer.dart';

class HomeRecentJobShimmer extends StatelessWidget {
  const HomeRecentJobShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500]!.withOpacity(0.2),
          highlightColor: Colors.grey[200]!,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ShimmerSkeletonComponent(
                    height: 23,
                    width: 120,
                    borderRadius: 2,
                  ),
                  ShimmerSkeletonComponent(
                    height: 20,
                    width: 47,
                    borderRadius: 2,
                  ),
                ],
              ),
              const VerticalSpace(space: 24),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => const HomeShimmerJobCard(),
                  separatorBuilder: (context, index) =>
                      const VerticalSpace(space: 20),
                  itemCount: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
