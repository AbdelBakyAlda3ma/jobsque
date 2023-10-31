import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import '../../../../core/widgets/primary_button.dart';

class JobDetailBodyBrimaryButton extends StatelessWidget {
  final JobEntity job;

  const JobDetailBodyBrimaryButton({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0),
            Colors.white.withOpacity(0.8),
          ],
        ),
      ),
      child: PrimaryButton.large(
        onPressed: () {
          BlocProvider.of<CompleteProfileCubit>(context)
              .checkIfProfileCompleted();
        },
        text: 'Apply now',
      ),
    );
  }
}
