import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/error_screen.dart';
import 'package:jobseque/core/widgets/loding_widget.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_screen_scaffold.dart';

@RoutePage()
class CompleteProfileScreen extends StatefulWidget {
  final JobEntity job;
  const CompleteProfileScreen({
    super.key,
    required this.job,
  });

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CompleteProfileCubit, CompleteProfileState>(
        builder: (context, state) {
          if (state is CompleteProfileCubitFailure) {
            return ErrorScreen(errorMessage: state.errorMsg);
          } else if (state is CompleteProfileCubitInitial ||
              state is CompleteProfileCubitLoading) {
            return const LoadingWidget();
          } else {
            return CompleteProfileScreenScaffold(job: widget.job);
          }
        },
      ),
    );
  }
}
