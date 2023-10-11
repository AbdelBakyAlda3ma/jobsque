import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/custom_toggle_button.dart';
import 'package:jobseque/core/widgets/custom_toggle_button_child.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';

class WorkLocationScreenBodyToggleButton extends StatefulWidget {
  const WorkLocationScreenBodyToggleButton({super.key});

  @override
  State<WorkLocationScreenBodyToggleButton> createState() =>
      _WorkLocationScreenBodyToggleButtonState();
}

class _WorkLocationScreenBodyToggleButtonState
    extends State<WorkLocationScreenBodyToggleButton> {
  List<bool> isSelected = [false, true];

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<WorkPrefrencesBloc>(context).isRemote = isSelected[1];
    return CustomToggleButton(
      isSelected: isSelected,
      onPressed: (index) {
        setState(() {
          for (var i = 0; i < isSelected.length; i++) {
            if (i == index) {
              isSelected[i] = true;
            } else {
              isSelected[i] = false;
            }
          }
        });
      },
      children: [
        CustomToggleButtonChild(
          text: 'Work From Office',
          isSelected: isSelected[0],
        ),
        CustomToggleButtonChild(
          text: 'Remote Work',
          isSelected: isSelected[1],
        ),
      ],
    );
  }
}
