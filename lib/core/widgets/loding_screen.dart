import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            height: 25,
            width: 50,
            child: LoadingIndicator(
              indicatorType: Indicator.lineScalePulseOut,
              colors: [
                AppColors.information[500]!,
                AppColors.primary[500]!,
                AppColors.danger[500]!,
                AppColors.primary[500]!,
              ],
              backgroundColor: Colors.transparent,
              pathBackgroundColor: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}
