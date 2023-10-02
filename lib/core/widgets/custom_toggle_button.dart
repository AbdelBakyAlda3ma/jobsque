import 'package:flutter/material.dart';
import '../utils/global/app_colors.dart';

class CustomToggleButton extends StatefulWidget {
  final List<bool> isSelected;
  final List<Widget> children;
  final void Function(int index) onPressed;
  const CustomToggleButton({
    super.key,
    required this.isSelected,
    required this.children,
    required this.onPressed,
  });

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  late int numbersOfChildren;
  @override
  void initState() {
    numbersOfChildren = widget.children.length;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: AppColors.neutral[100]),
      child: ToggleButtons(
        hoverColor: Colors.transparent,
        constraints: BoxConstraints.expand(
          /// 48 is the total horizontal padding of the screen
          width: (MediaQuery.sizeOf(context).width - 48) / numbersOfChildren,
        ),
        renderBorder: false,
        borderRadius: BorderRadius.circular(100),
        selectedColor: Colors.white,
        fillColor: Colors.transparent,
        splashColor: Colors.transparent,
        onPressed: widget.onPressed,
        isSelected: widget.isSelected,
        children: widget.children,
      ),
    );
  }
}
