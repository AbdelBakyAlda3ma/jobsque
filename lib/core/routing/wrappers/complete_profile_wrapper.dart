import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';

@RoutePage()
class CompleteProfileWrapperScreen extends StatelessWidget {
  const CompleteProfileWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CompleteProfileCubit>(
      create: (context) =>
          sL.get<CompleteProfileCubit>()..getProfileCompletion(),
      child: const AutoRouter(),
    );
  }
}
