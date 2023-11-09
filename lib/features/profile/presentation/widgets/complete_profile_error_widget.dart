import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../../../core/widgets/custom_error_widget.dart';

class CompleteProfileErrorWidget extends StatelessWidget {
  final String errorMessage;
  const CompleteProfileErrorWidget({
    super.key,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: CustomErrorWidget(
          errorMessage: errorMessage,
          onPressed: () {
            context.router.pop();
          },
        ),
      ),
    );
  }
}
