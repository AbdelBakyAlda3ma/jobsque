import 'package:flutter/material.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_type_screen_body_header.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_type_screen_body_primary_button.dart';
import 'package:jobseque/features/profile/presentation/widgets/work_type_screen_body_wrap.dart';

import '../../../../core/widgets/vertical_space.dart';

class WorkTypeBody extends StatelessWidget {
  const WorkTypeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          VerticalSpace(space: 20),
          WorkTypeBodyHeader(),
          VerticalSpace(space: 36),
          WorkTypeBodyWrap(),
          Spacer(),
          WorkTypeBodyPrimaryButton(),
          VerticalSpace(space: 9),
        ],
      ),
    );
  }
}
