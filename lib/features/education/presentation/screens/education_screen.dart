import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/education/presentation/manager/add_education_bloc/add_education_bloc.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_safe_area.dart';

@RoutePage()
class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddEducationBloc>(
      create: (context) => sL.get<AddEducationBloc>(),
      child: const EducationScreenSafeArea(),
    );
  }
}
