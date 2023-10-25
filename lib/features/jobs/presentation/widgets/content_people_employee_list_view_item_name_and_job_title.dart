import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/list_of_company_jobs_employees.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ContentPeopleEmployeeListViewItemNameAndTitle extends StatelessWidget {
  final EmployeeModel employeeModel;
  const ContentPeopleEmployeeListViewItemNameAndTitle(
      {super.key, required this.employeeModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          employeeModel.name,
          style: CustomTextStyles.textMMedium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 4),
        Text(
          '${employeeModel.position} ${employeeModel.title} at ${employeeModel.company}',
          style: CustomTextStyles.textSRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
      ],
    );
  }
}
