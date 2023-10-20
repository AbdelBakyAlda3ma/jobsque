import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CompleteProfilePercentIndicator extends StatefulWidget {
  final int completionProgressIndicator;
  const CompleteProfilePercentIndicator(
      {super.key, required this.completionProgressIndicator});

  @override
  State<CompleteProfilePercentIndicator> createState() =>
      _CompleteProfilePercentIndicatorState();
}

class _CompleteProfilePercentIndicatorState
    extends State<CompleteProfilePercentIndicator> {
  @override
  void didChangeDependencies() {
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CircularPercentIndicator(
        radius: 50.0,
        lineWidth: 8,
        animation: true,
        percent: widget.completionProgressIndicator / 4,
        center: Text(
          "${widget.completionProgressIndicator * 100 ~/ 4}%",
          style: CustomTextStyles.h3Medium.copyWith(
            color: AppColors.primary[500],
          ),
        ),
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: AppColors.primary[500],
        backgroundColor: AppColors.neutral[200]!,
      ),
    );
  }
}
