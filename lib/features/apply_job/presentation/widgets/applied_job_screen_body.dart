import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_body_active_jobs_content.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_body_toggle_button.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_body_toggle_content.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/no_application_were_rejected.dart';

class AppliedJobScreenBody extends StatefulWidget {
  final List<ActiveAppliedJobEntity> listOfActiveJjobs;
  const AppliedJobScreenBody({
    super.key,
    required this.listOfActiveJjobs,
  });

  @override
  State<AppliedJobScreenBody> createState() => _AppliedJobScreenBodyState();
}

class _AppliedJobScreenBodyState extends State<AppliedJobScreenBody> {
  late List<Widget> toggelContent;

  late Widget selectedWidget;
  @override
  void initState() {
    toggelContent = [
      AppliedJobScreenBodyActiveJobsContent(
        listOfActiveAppliedJobs: widget.listOfActiveJjobs,
      ),
      const NoApplicationWereRejected(),
    ];
    selectedWidget = toggelContent[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(space: 18),
        AppliedJobScreenBodyToggleButton(
          onPressed: (index) {
            setState(() {
              selectedWidget = toggelContent[index];
            });
          },
        ),
        const VerticalSpace(space: 24),
        AppliedScreenBodyToggleContent(
          content: selectedWidget,
        ),
      ],
    );
  }
}
