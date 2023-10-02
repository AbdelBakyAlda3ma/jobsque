import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/shimmer_search_job_card.dart';
import 'package:jobseque/core/widgets/shimmer_skeleton_component.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerView extends StatelessWidget {
  const ShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
            top: 48,
            right: 16,
            left: 16,
          ),
          child: Shimmer.fromColors(
            baseColor: Colors.grey[500]!.withOpacity(0.2),
            highlightColor: Colors.grey[200]!,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 255,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ShimmerSkeletonComponent(
                          height: 225, width: 165);
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(width: 16);
                    },
                  ),
                ),
                const SizedBox(height: 52),
                const ShimmerSkeletonComponent(height: 22, width: 98),
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const ShimmerSearchJobCard();
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: 24);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
