import 'package:flutter/material.dart';
import '../widgets/work_type_screen_body.dart';

class WorkTypeScreen extends StatelessWidget {
  const WorkTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: WorkTypeBody(),
      ),
    );
  }
}
