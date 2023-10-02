import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/job_list.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/type_of_work_step_content_list_view_list_tile.dart';

import '../../../../core/widgets/vertical_space.dart';

class TypeOfWorkStepContentListView extends StatelessWidget {
  const TypeOfWorkStepContentListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return TypeOfWorkStepContentListViewListTile(
            job: jobList[index],
          );
        },
        separatorBuilder: (context, index) {
          return const VerticalSpace(space: 16);
        },
        itemCount: jobList.length,
      ),
    );
  }
}
