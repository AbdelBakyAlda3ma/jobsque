import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/primary_button.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/manager/get_jobs_bloc/get_jobs_bloc.dart';
import '../network/network_info.dart';
import '../utils/functions/snackbar_message.dart';
import '../utils/global/app_colors.dart';
import '../utils/global/custom_text_styles.dart';
import '../utils/service_locator.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
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
        const VerticalSpace(space: 10),
        const Icon(
          Icons.error_outline,
          size: 60,
        ),
        const VerticalSpace(space: 40),
        PrimaryButton.large(
          text: 'Try again',
          onPressed: () async {
            if (await sL.get<NetworkInfoImpl>().isConnected) {
              if (context.mounted) {
                BlocProvider.of<GetJobsBloc>(context).add(GetJobsEvent());
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
