import 'package:jobseque/core/utils/global/app_images.dart';

List<EmployeeModel> uIUXEmployeesList = [
  EmployeeModel(
    name: 'John Doe',
    title: 'UI/UX Designer',
    position: 'Senior',
    workDurationYears: 3,
    company: 'Twitter',
    profileImage: AppImages.imageProfile1,
  ),
  EmployeeModel(
    name: 'Jane Smith',
    title: 'UI/UX Designer',
    position: 'Lead',
    workDurationYears: 5,
    company: 'Twitter',
    profileImage: AppImages.imageProfile2,
  ),
  EmployeeModel(
    name: 'Michael Johnson',
    title: 'UI/UX Designer',
    position: 'Senior',
    workDurationYears: 4,
    company: 'Twitter',
    profileImage: AppImages.imageProfile3,
  ),
  EmployeeModel(
    name: 'Emily Brown',
    title: 'UI/UX Designer',
    position: 'Junior',
    workDurationYears: 2,
    company: 'Twitter',
    profileImage: AppImages.imageProfile4,
  ),
  EmployeeModel(
    name: 'David Lee',
    title: 'UI/UX Designer',
    position: 'Senior',
    workDurationYears: 6,
    company: 'Twitter',
    profileImage: AppImages.imageProfile1,
  ),
  EmployeeModel(
    name: 'Alex Williams',
    title: 'UI/UX Designer',
    position: 'Mid-level',
    workDurationYears: 3,
    company: 'Twitter',
    profileImage: AppImages.imageProfile2,
  ),
  EmployeeModel(
    name: 'Samantha Jones',
    title: 'UI/UX Designer',
    position: 'Lead',
    workDurationYears: 7,
    company: 'Twitter',
    profileImage: AppImages.imageProfile3,
  ),
];

class EmployeeModel {
  final String name;
  final String title;
  final String position;
  final int workDurationYears;
  final String company;
  final String profileImage;

  EmployeeModel({
    required this.name,
    required this.title,
    required this.position,
    required this.workDurationYears,
    required this.company,
    required this.profileImage,
  });
}
