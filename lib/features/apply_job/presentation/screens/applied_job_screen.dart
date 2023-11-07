import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/applied_job_screen_safe_area.dart';

@RoutePage()
class AppliedJobsScreen extends StatefulWidget {
  static String routeName = AppliedJobsRoute.name;

  const AppliedJobsScreen({super.key});

  @override
  State<AppliedJobsScreen> createState() => _AppliedJobsScreenState();
}

class _AppliedJobsScreenState extends State<AppliedJobsScreen> {
  @override
  void initState() {
    BlocProvider.of<GetActiveAppliedJobsBloc>(context).add(
      GetActiveAppliedJobsEvent(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppliedJobScreenSafeArea(
      routeName: AppliedJobsScreen.routeName,
    );
  }
}
