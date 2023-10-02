import 'package:flutter/material.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'biodata_step_content_form.dart';
import 'biodata_step_content_header.dart';

class BiodataStepContent extends StatelessWidget {
  const BiodataStepContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BiodataStepContentHeader(),
              VerticalSpace(space: 28),
              BiodataStepContentForm(),
            ],
          ),
        ),
      ],
    );
  }
}
