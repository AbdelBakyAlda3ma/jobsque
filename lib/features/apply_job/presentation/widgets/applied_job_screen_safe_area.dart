import 'package:flutter/material.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_scaffold.dart';

class AppliedJobScreenSafeArea extends StatelessWidget {
  final String routeName;
  const AppliedJobScreenSafeArea({
    super.key,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppliedJobScreenScaffold(
        routeName: routeName,
      ),
    );
  }
}
