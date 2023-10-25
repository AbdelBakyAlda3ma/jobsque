import 'package:flutter/material.dart';

class AppliedScreenBodyToggleContent extends StatelessWidget {
  final Widget content;
  const AppliedScreenBodyToggleContent({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: content,
    );
  }
}
