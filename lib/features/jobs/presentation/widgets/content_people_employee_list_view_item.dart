import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/content_people_employee_list_view_item_name_and_job_title.dart';
import 'package:jobseque/models/employee_model.dart';
import 'content_people_employee_list_view_item_work_during.dart';
import 'content_people_employee_list_view_item_image.dart';

class ContentPeopleEmployeeListViewItem extends StatelessWidget {
  final EmployeeModel employeeModel;
  const ContentPeopleEmployeeListViewItem({
    super.key,
    required this.employeeModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ContentPeopleEmployeeListViewItemImage(
              employeeModel: employeeModel,
            ),
            const HorizontalSpace(space: 12),
            ContentPeopleEmployeeListViewItemNameAndTitle(
              employeeModel: employeeModel,
            ),
            const Spacer(),
            ContentPeopleEmployeeListViewItemWorkDuring(
              employeeModel: employeeModel,
            ),
          ],
        ),
        const VerticalSpace(space: 12),
        Divider(
          height: 0,
          color: AppColors.neutral[200],
          thickness: 1,
        ),
      ],
    );
  }
}
