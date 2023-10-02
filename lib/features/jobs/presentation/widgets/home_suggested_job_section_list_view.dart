import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_suggested_job_section_list_view_item.dart';

import '../../../../core/widgets/horizontal_space.dart';

class HomeSuggestedJobSectionListView extends StatelessWidget {
  const HomeSuggestedJobSectionListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 183,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return const HomeSuggestedJobSectionListViewItem();
          },
          separatorBuilder: (BuildContext context, int index) =>
              const HorizontalSpace(space: 16),
        ),
      ),
    );
  }
}
