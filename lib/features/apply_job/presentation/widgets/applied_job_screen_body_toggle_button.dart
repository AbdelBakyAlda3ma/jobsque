import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_toggle_button.dart';
import 'package:jobseque/core/widgets/custom_toggle_button_child.dart';

class AppliedJobScreenBodyToggleButton extends StatefulWidget {
  const AppliedJobScreenBodyToggleButton({
    super.key,
    required this.onPressed,
  });
  final void Function(int) onPressed;
  @override
  State<AppliedJobScreenBodyToggleButton> createState() =>
      _AppliedJobScreenBodyToggleButtonState();
}

class _AppliedJobScreenBodyToggleButtonState
    extends State<AppliedJobScreenBodyToggleButton> {
  List<bool> isSelected = [true, false];
  @override
  Widget build(BuildContext context) {
    return CustomToggleButton(
      isSelected: isSelected,
      onPressed: (index) {
        setState(() {
          for (var i = 0; i < isSelected.length; i++) {
            if (i == index) {
              isSelected[i] = true;
              widget.onPressed(index);
            } else {
              isSelected[i] = false;
            }
          }
        });
      },
      children: [
        CustomToggleButtonChild(
          text: 'Active',
          isSelected: isSelected[0],
        ),
        CustomToggleButtonChild(
          text: 'Rejected',
          isSelected: isSelected[1],
        ),
      ],
    );
  }
}
