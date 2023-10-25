import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_body_list_view.dart';

class CompleteProfileScreenBodyBlocListener extends StatelessWidget {
  const CompleteProfileScreenBodyBlocListener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompleteProfileCubit, CompleteProfileState>(
        builder: (context, state) {
      if (state is InCompletedProfileState) {
        return CompleteProfileScreenBodyListView(
          educationCompletion: state.educationCompletion,
          experienceCompletion: state.experienceCompletion,
          personalDetailsCompletion: state.personalDetailsCompletion,
          portfolioCompletion: state.portfolioCompletion,
        );
      } else {
        return const CompleteProfileScreenBodyListView(
          educationCompletion: true,
          experienceCompletion: true,
          personalDetailsCompletion: true,
          portfolioCompletion: true,
        );
      }
    });
  }
}
