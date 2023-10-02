import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_shimmer_job_card.dart';
import 'package:shimmer/shimmer.dart';

class HomeShimmerLoding extends StatelessWidget {
  const HomeShimmerLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500]!.withOpacity(0.2),
          highlightColor: Colors.grey[200]!,
          child: ListView.separated(
            itemBuilder: (context, index) => const HomeShimmerJobCard(),
            separatorBuilder: (context, index) =>
                const VerticalSpace(space: 20),
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}
