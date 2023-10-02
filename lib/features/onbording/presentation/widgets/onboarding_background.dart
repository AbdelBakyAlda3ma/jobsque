import 'package:flutter/material.dart';

class OnboardingBackground extends StatelessWidget {
  final String backgroundImage;
  const OnboardingBackground({
    super.key,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(backgroundImage);
  }
}
