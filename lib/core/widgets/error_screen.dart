import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/network/network_info.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';

@RoutePage()
class ErrorScreen extends StatelessWidget {
  final String errorMessage;
  const ErrorScreen({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ErrorWidget(errorMessage: errorMessage),
          ),
        ),
      ),
    );
  }
}

class ErrorWidget extends StatelessWidget {
  const ErrorWidget({
    super.key,
    required this.errorMessage,
  });

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          errorMessage,
          textAlign: TextAlign.center,
          style: CustomTextStyles.h3Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 40),
        PrimaryButton.large(
          text: 'Get Back',
          onPressed: () async {
            if (await sL.get<NetworkInfoImpl>().isConnected) {
              if (context.mounted) {
                Navigator.pop(context);
              }
            } else {
              if (context.mounted) {
                showErrorSnackBar(
                  context: context,
                  message: "There is no internet connection",
                );
              }
            }
          },
        ),
      ],
    );
  }
}
