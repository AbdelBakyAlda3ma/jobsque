import 'package:flutter/material.dart';
import '../utils/global/icons_jobeque_icons.dart';

List<WorkTypeModel> workType = [
  WorkTypeModel(
      work: 'UI/UX Designer',
      unselectedIcon: IconsJobeque.bezier,
      selectedIcon: IconsJobeque.bezierbold),
  WorkTypeModel(
      work: 'Ilustrator Designer',
      unselectedIcon: IconsJobeque.pentool,
      selectedIcon: IconsJobeque.pentoolbold),
  WorkTypeModel(
      work: 'Developer',
      unselectedIcon: IconsJobeque.code,
      selectedIcon: IconsJobeque.codebold),
  WorkTypeModel(
      work: 'Management',
      unselectedIcon: IconsJobeque.graph,
      selectedIcon: IconsJobeque.graphbold),
  WorkTypeModel(
      work: 'Information Technology',
      unselectedIcon: IconsJobeque.monitormobile,
      selectedIcon: IconsJobeque.monitormobilebold),
  WorkTypeModel(
      work: 'Research and Analytics',
      unselectedIcon: IconsJobeque.cloudadd,
      selectedIcon: IconsJobeque.cloudaddbold),
];

class WorkTypeModel {
  String work;
  IconData unselectedIcon;
  IconData selectedIcon;
  WorkTypeModel({
    required this.work,
    required this.unselectedIcon,
    required this.selectedIcon,
  });
}
