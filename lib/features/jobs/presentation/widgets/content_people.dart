import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/content_people_employee_list_view.dart';

import '../../../../core/widgets/vertical_space.dart';
import 'content_people_drop_down_text_field.dart';
import 'content_people_employees_and_work_title.dart';

class ContentPeople extends StatelessWidget {
  const ContentPeople({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ContentPeopleEmployeesAndWorkTitle(),
              ContentPeopleDropDownTextField(),
            ],
          ),
          VerticalSpace(space: 24),
          ContentPeopleEmployeeListView(),
        ],
      ),
    );
  }
}
