import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/experience/presentation/manager/add_experience_bloc/add_experience_bloc.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_scaffold.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ExperienceScreenSafeArea extends StatelessWidget {
  const ExperienceScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<AddExperienceBloc, AddExperienceState>(
        listener: (context, state) async {
          if (state is AddExperienceSuccess) {
            await context.router.pop();
            if (context.mounted) {
              showSuccessSnackBar(
                context: context,
                message: state.successMsg,
              );
              BlocProvider.of<CompleteProfileCubit>(context)
                  .getProfileCompletion();
            }
          }
          if (state is AddExperienceFailure) {
            if (context.mounted) {
              showErrorSnackBar(
                context: context,
                message: state.errorMsg,
              );
            }
          }
        },
        builder: (context, state) {
          if (state is AddExperienceLoading) {
            return const ModalProgressHUD(
              inAsyncCall: true,
              child: ExperienceScreenScaffold(),
            );
          } else {
            return const ExperienceScreenScaffold();
          }
        },
      ),
    );
  }
}
