import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/network/network_info.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/jobs/presentation/manager/get_jobs_bloc/get_jobs_bloc.dart';

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
      ),
    );
  }
}
