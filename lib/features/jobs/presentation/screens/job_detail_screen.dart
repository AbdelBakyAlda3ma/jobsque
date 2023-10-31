import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/jobs/presentation/widgets/job_detail_screen_safe_area.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';

@RoutePage()
class JobDetailScreen extends StatelessWidget {
  final JobEntity job;
  const JobDetailScreen({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CompleteProfileCubit>(
      create: (context) => sL.get<CompleteProfileCubit>(),
      child: JobDetailScreenSafeArea(job: job),
    );
  }
}
