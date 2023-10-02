import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_header.dart';

class SavdedJobsBodyHeader extends StatelessWidget {
  const SavdedJobsBodyHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(
      headerTitle: '12 Job Saved',
      alignment: Alignment.center,
    );
  }
}
