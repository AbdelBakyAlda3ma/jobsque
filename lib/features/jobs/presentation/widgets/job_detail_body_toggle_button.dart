import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_toggle_button.dart';
import 'package:jobseque/core/widgets/custom_toggle_button_child.dart';

class JobDetailBodyToggleButton extends StatefulWidget {
  const JobDetailBodyToggleButton({
    super.key,
    required this.onPressed,
  });
  final void Function(int) onPressed;
  @override
  State<JobDetailBodyToggleButton> createState() =>
      _JobDetailBodyToggleButtonState();
}

class _JobDetailBodyToggleButtonState extends State<JobDetailBodyToggleButton> {
  List<bool> isSelected = [true, false, false];
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
          text: 'Desicription',
          isSelected: isSelected[0],
        ),
        CustomToggleButtonChild(
          text: 'Company',
          isSelected: isSelected[1],
        ),
        CustomToggleButtonChild(
          text: 'People',
          isSelected: isSelected[2],
        ),
      ],
    );
  }
}
