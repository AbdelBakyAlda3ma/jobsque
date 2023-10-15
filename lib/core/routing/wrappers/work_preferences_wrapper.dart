import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';

@RoutePage()
class WorkPreferencesWrapper extends StatelessWidget {
  const WorkPreferencesWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WorkPrefrencesBloc>(
      create: (context) => sL.get<WorkPrefrencesBloc>(),
      child: const AutoRouter(),
    );
  }
}
