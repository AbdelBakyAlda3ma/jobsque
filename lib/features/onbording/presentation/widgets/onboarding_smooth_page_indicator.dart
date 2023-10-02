import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/global/app_colors.dart';

class OnboardingSmoothPageIndicator extends StatelessWidget {
  const OnboardingSmoothPageIndicator({
    super.key,
    required this.controller,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller, // PageController
      count: 3,
      effect: ScrollingDotsEffect(
        spacing: 3,
        dotColor: AppColors.primary[200]!,
        activeDotColor: AppColors.primary[500]!,
        dotHeight: 8,
        dotWidth: 8,
      ), // your preferred effect
    );
  }
}
