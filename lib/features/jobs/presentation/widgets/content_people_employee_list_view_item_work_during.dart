import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/list_of_company_jobs_employees.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/vertical_space.dart';

class ContentPeopleEmployeeListViewItemWorkDuring extends StatelessWidget {
  const ContentPeopleEmployeeListViewItemWorkDuring({
    super.key,
    required this.employeeModel,
  });

  final EmployeeModel employeeModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'Work during',
          style: CustomTextStyles.textSRegular.copyWith(
            color: AppColors.neutral[500],
          ),
        ),
        const VerticalSpace(space: 2),
        Text(
          '${employeeModel.workDurationYears} Years',
          style: CustomTextStyles.textSMedium.copyWith(
            color: AppColors.primary[500],
          ),
        ),
      ],
    );
  }
}
