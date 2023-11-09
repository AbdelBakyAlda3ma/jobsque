import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
            child: ShimmerSkeletonComponent(
              height: 23,
              width: 350,
              borderRadius: 2,
            ),
          ),
          const VerticalSpace(space: 20),
          CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, index, realIndex) =>
                const HomeSuggestedJobShimmerItem(),
            options: CarouselOptions(
              enableInfiniteScroll: false,
              padEnds: true,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              initialPage: 0,
            ),
          ),
        ],
      ),
    );
  }
}
