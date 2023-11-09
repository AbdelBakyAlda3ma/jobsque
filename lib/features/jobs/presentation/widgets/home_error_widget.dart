import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_error_widget.dart';

class AppErrorWidget extends StatelessWidget {
  final String errorMessage;
  const AppErrorWidget({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: CustomErrorWidget(
          errorMessage: errorMessage,
        ),
      ),
    );
  }
}
