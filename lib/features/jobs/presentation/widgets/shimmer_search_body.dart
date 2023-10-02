import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/shimmer_search_job_card.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerSearchBody extends StatelessWidget {
  const ShimmerSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[500]!.withOpacity(0.2),
          highlightColor: Colors.grey[200]!,
          child: ListView.separated(
            itemBuilder: (context, index) => const ShimmerSearchJobCard(),
            separatorBuilder: (context, index) =>
                const VerticalSpace(space: 20),
            itemCount: 3,
          ),
        ),
      ),
    );
  }
}
