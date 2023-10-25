import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_step_progress_icon.dart';

class CustomStep extends StatelessWidget {
  final Widget? content;
  final bool? isActive;
  final CustomStepState? state;
  final Widget? label;
  const CustomStep({
    super.key,
    this.content,
    this.isActive,
    this.state = CustomStepState.indexed,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return content ?? const SizedBox();
  }
}
