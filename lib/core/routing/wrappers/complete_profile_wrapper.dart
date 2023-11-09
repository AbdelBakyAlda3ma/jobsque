import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/check_if_profile_complete_cubit/check_if_profile_complete_cubit.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';

@RoutePage()
class CompleteProfileWrapperScreen extends StatelessWidget {
  const CompleteProfileWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CompleteProfileCubit>(
          create: (context) =>
              sL.get<CompleteProfileCubit>()..getProfileCompletion(),
        ),
        BlocProvider<CheckIfProfileCompleteCubit>(
          create: (context) =>
              sL.get<CheckIfProfileCompleteCubit>()..checkIfProfileCompleted(),
        ),
      ],
      child: const AutoRouter(),
    );
  }
}
