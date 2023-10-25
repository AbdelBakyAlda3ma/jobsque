import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/list_of_company_jobs_employees.dart';

class ContentPeopleEmployeeListViewItemImage extends StatelessWidget {
  const ContentPeopleEmployeeListViewItemImage({
    super.key,
    required this.employeeModel,
  });

  final EmployeeModel employeeModel;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      employeeModel.profileImage,
      height: 36,
      width: 36,
    );
  }
}
