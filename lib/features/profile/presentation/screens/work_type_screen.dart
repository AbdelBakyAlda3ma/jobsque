import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_bloc/get_profile_bloc.dart';
import '../widgets/work_type_screen_body.dart';

@RoutePage()
class WorkTypeScreen extends StatelessWidget {
  const WorkTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetProfileBloc>(
      create: (context) => sL.get<GetProfileBloc>()..add(GetProfileEvent()),
      child: const SafeArea(
        child: Scaffold(
          body: WorkTypeBody(),
        ),
      ),
    );
  }
}
