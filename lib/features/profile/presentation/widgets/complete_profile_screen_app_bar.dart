import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';

class CompleteProfileScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final JobEntity job;

  const CompleteProfileScreenAppBar({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompleteProfileCubit, CompleteProfileState>(
      builder: (context, state) {
        return AppBar(
          leading: GestureDetector(
            onTap: () {
              if (state is CompletedProfile) {
                context.router.popAndPush(
                  ApplyJobStepperRoute(
                    job: job,
                  ),
                );
              } else {
                context.router.pop();
              }
            },
            child: const Icon(
              IconsJobeque.arrowleft,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Complete Profile',
            style: CustomTextStyles.h4Medium.copyWith(
              color: AppColors.neutral[900],
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
