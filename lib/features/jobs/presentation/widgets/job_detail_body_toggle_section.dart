import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'content_company.dart';
import 'content_description.dart';
import 'content_people.dart';
import 'job_detail_body_toggle_button.dart';
import 'job_detail_body_toggle_content.dart';

class JobDetailBodyToggelSection extends StatefulWidget {
  final JobEntity job;
  const JobDetailBodyToggelSection({
    super.key,
    required this.job,
  });

  @override
  State<JobDetailBodyToggelSection> createState() =>
      _JobDetailBodyToggelSectionState();
}

class _JobDetailBodyToggelSectionState
    extends State<JobDetailBodyToggelSection> {
  List<Widget> toggelContent = [];

  late Widget selectedWidget;
  @override
  void initState() {
    toggelContent = [
      ContentDecription(
        job: widget.job,
      ),
      ContentCompany(
        job: widget.job,
      ),
      const ContentPeople(),
    ];
    selectedWidget = toggelContent[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          JobDetailBodyToggleButton(
            onPressed: (index) {
              setState(() {
                selectedWidget = toggelContent[index];
              });
            },
          ),
          const VerticalSpace(space: 24),
          JobDetailBodyToggleContent(
            content: selectedWidget,
          ),
        ],
      ),
    );
  }
}
