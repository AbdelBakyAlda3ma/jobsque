import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/shimmer_skeleton_component.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';

import '../../../../core/utils/global/app_colors.dart';

class HomeShimmerJobCard extends StatelessWidget {
  const HomeShimmerJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            ShimmerSkeletonComponent(
              height: 40,
              width: 40,
              borderRadius: 8,
            ),
            HorizontalSpace(space: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerSkeletonComponent(
                  height: 23,
                  width: 120,
                  borderRadius: 8,
                ),
                VerticalSpace(space: 4),
                ShimmerSkeletonComponent(
                  height: 16,
                  width: 70,
                  borderRadius: 4,
                ),
              ],
            ),
          ],
        ),
        const VerticalSpace(space: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ShimmerSkeletonComponent(
                  height: 26,
                  width: 65,
                  borderRadius: 100,
                ),
                HorizontalSpace(space: 8),
                ShimmerSkeletonComponent(
                  height: 26,
                  width: 65,
                  borderRadius: 100,
                ),
                HorizontalSpace(space: 8),
                ShimmerSkeletonComponent(
                  height: 26,
                  width: 65,
                  borderRadius: 100,
                ),
              ],
            ),
            ShimmerSkeletonComponent(
              height: 21,
              width: 77,
              borderRadius: 4,
            ),
          ],
        ),
        const VerticalSpace(space: 16),
        Divider(
          thickness: 1,
          color: AppColors.neutral[200],
          height: 0,
        ),
      ],
    );
  }
}
