import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_type_card.dart';

import '../../../../core/dummy/work_type_dummy_data.dart';

class WorkTypeBodyWrap extends StatelessWidget {
  const WorkTypeBodyWrap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            WorkTypeCard(
              workTypeModel: workType[0],
            ),
            const HorizontalSpace(space: 15),
            WorkTypeCard(
              workTypeModel: workType[1],
            ),
          ],
        ),
        const VerticalSpace(space: 20),
        Row(
          children: [
            WorkTypeCard(
              workTypeModel: workType[2],
            ),
            const HorizontalSpace(space: 15),
            WorkTypeCard(
              workTypeModel: workType[3],
            ),
          ],
        ),
        const VerticalSpace(space: 20),
        Row(
          children: [
            WorkTypeCard(
              workTypeModel: workType[4],
            ),
            const HorizontalSpace(space: 15),
            WorkTypeCard(
              workTypeModel: workType[5],
            ),
          ],
        ),
      ],
    );
  }
}
