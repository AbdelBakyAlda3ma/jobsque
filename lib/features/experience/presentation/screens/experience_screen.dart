import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/experience/presentation/manager/add_experience_bloc/add_experience_bloc.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_safe_area.dart';

@RoutePage()
class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddExperienceBloc>(
      create: (context) => sL.get<AddExperienceBloc>(),
      child: const ExperienceScreenSafeArea(),
    );
  }
}
