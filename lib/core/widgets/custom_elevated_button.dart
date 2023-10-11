import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Size minimumSize;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final TextStyle? style;
  final OutlinedBorder? shape;
  final Widget? child;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.minimumSize,
    required this.padding,
    required this.backgroundColor,
    required this.style,
    required this.shape,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: padding,
        backgroundColor: backgroundColor,
        shape: shape,
        elevation: 0,
        minimumSize: minimumSize,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: child ??
          Text(
            text,
            style: style,
          ),
    );
  }
}
