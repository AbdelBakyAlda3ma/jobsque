import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_header.dart';

class NewNotificationHeader extends StatelessWidget {
  const NewNotificationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(headerTitle: 'New');
  }
}
