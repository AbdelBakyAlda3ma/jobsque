import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_heading.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_list_view.dart';

class HomeSuggestedJobSection extends StatelessWidget {
  const HomeSuggestedJobSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeSuggestedJobSectionHeading(),
        HomeSuggestedJobSectionListView(),
      ],
    );
  }
}
