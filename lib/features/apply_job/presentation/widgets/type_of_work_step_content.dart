import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/type_of_work_step_content_header.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/type_of_work_step_content_list_view.dart';

class TypeOfWorkStepContent extends StatelessWidget {
  const TypeOfWorkStepContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TypeOfWorkStepContentHeader(),
        VerticalSpace(space: 28),
        TypeOfWorkStepContentListView()
      ],
    );
  }
}
