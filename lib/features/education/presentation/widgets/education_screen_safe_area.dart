import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/education/presentation/manager/add_education_bloc/add_education_bloc.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_scaffold.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class EducationScreenSafeArea extends StatelessWidget {
  const EducationScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<AddEducationBloc, AddEducationState>(
        listener: (context, state) async {
          if (state is AddEducationSuccess) {
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
          if (state is AddEducationFailure) {
            if (context.mounted) {
              showErrorSnackBar(
                context: context,
                message: state.errorMsg,
              );
            }
          }
        },
        builder: (context, state) {
          if (state is AddEducationLoading) {
            return const ModalProgressHUD(
              inAsyncCall: true,
              child: EducationScreenScaffold(),
            );
          } else {
            return const EducationScreenScaffold();
          }
        },
      ),
    );
  }
}
