import 'package:flutter/material.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_location_screen_body_country_job.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_location_screeb_body_header.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_location_screen_body_primary_button.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_location_screen_body_toggle_button.dart';

import '../../../../core/widgets/vertical_space.dart';

class WorkLocationScreenBody extends StatelessWidget {
  const WorkLocationScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpace(space: 20),
          WorkLocationScreenBodyHeader(),
          VerticalSpace(space: 32),
          WorkLocationScreenBodyToggleButton(),
          VerticalSpace(space: 24),
          WorkLocationScreenBodyCountryJob(),
          VerticalSpace(space: 10),
          WorkLocationBodyPrimaryButton(),
          VerticalSpace(space: 9),
        ],
      ),
    );
  }
}
