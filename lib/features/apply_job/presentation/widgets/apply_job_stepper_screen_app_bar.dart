import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/custom_text_styles.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';

class ApplyJobStepperScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final JobEntity job;

  const ApplyJobStepperScreenAppBar({
    super.key,
    required this.job,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      notificationPredicate: (ScrollNotification notification) {
        return notification.depth != 0;
      },
      leading: GestureDetector(
        onTap: () async {
          await context.router.pop();
          if (context.mounted) {
            BlocProvider.of<AddActiveApplicationBloc>(context).add(
              AddActiveApplicationEvent(
                job: job,
              ),
            );
          }
        },
        child: const Icon(
          IconsJobeque.arrowleft,
        ),
      ),
      centerTitle: true,
      title: Text(
        'Apply Job',
        style: CustomTextStyles.h4Medium.copyWith(
          color: AppColors.neutral[900],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
