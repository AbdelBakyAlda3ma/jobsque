import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/add_personal_details_bloc/add_personal_details_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:jobseque/features/profile/presentation/widgets/personal_details_screen_scaffold.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class PersonalDetailsScreenSafeArea extends StatelessWidget {
  const PersonalDetailsScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<AddPersonalDetailsBloc, AddPersonalDetailsState>(
        listener: (context, state) async {
          if (state is AddPersonalDetailsSuccess) {
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
          if (state is AddPersonalDetailsFailure) {
            if (context.mounted) {
              showErrorSnackBar(
                context: context,
                message: state.errorMsg,
              );
            }
          }
        },
        builder: (context, state) {
          if (state is AddPersonalDetailsLoading) {
            return const ModalProgressHUD(
              inAsyncCall: true,
              child: PersonalDetailsScreenScaffold(),
            );
          } else {
            return const PersonalDetailsScreenScaffold();
          }
        },
      ),
    );
  }
}
