import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/list_of_company_jobs_employees.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/content_people_employee_list_view_item.dart';

class ContentPeopleEmployeeListView extends StatelessWidget {
  const ContentPeopleEmployeeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 70),
        itemBuilder: (context, index) => ContentPeopleEmployeeListViewItem(
          employeeModel: uIUXEmployeesList[index],
        ),
        separatorBuilder: (context, index) => const VerticalSpace(space: 16),
        itemCount: uIUXEmployeesList.length,
      ),
    );
  }
}
