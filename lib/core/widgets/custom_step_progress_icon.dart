import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_step_progress_icon_Complete_with_index.dart';

import 'custom_step_progress_icon_complete.dart';
import 'custom_step_progress_icon_indexed.dart';

class CustomStepProgressIcon extends StatelessWidget {
  const CustomStepProgressIcon({
    super.key,
    required this.isActiveIcon,
    required this.iconIndex,
    this.state = CustomStepState.indexed,
    this.iconSize,
  });

  final bool isActiveIcon;
  final int iconIndex;
  final CustomStepState state;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    switch (state) {
      case CustomStepState.indexed:
        return CustomStepProgressIconIndexed(
          isActiveIcon: isActiveIcon,
          iconIndex: iconIndex,
          size: iconSize,
        );
      case CustomStepState.complete:
        return CsutomStepProgressIconComplete(
          size: iconSize,
        );
      case CustomStepState.hangOnInProgress:
        return CustomStepProgressIconCompleteWithIndex(
          iconIndex: iconIndex,
          size: iconSize,
        );
    }
  }
}

enum CustomStepState {
  /// A step that displays its index in its circle.
  indexed,

  /// A step that displays a tick icon in its circle.
  complete,

  /// A step that display its index in filled Circle
  hangOnInProgress,
}
