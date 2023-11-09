import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/shimmer_skeleton_component.dart';

class HomeSuggestedJobShimmerItem extends StatelessWidget {
  const HomeSuggestedJobShimmerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const ShimmerSkeletonComponent(
      width: 300,
      height: 183,
      borderRadius: 12,
    );
  }
}
