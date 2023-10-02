import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_error_widget.dart';

class HomeErrorWidget extends StatelessWidget {
  final String errorMessage;
  const HomeErrorWidget({
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
