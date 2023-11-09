import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/shimmer_skeleton_component.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_shimmer_item.dart';
import 'package:shimmer/shimmer.dart';

class HomeSuggestedJobShimmer extends StatelessWidget {
  const HomeSuggestedJobShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[500]!.withOpacity(0.2),
      highlightColor: Colors.grey[200]!,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
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
          ),
          const VerticalSpace(space: 20),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: SizedBox(
              height: 183,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const HomeSuggestedJobShimmerItem();
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const HorizontalSpace(space: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
