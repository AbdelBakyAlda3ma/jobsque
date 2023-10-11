import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/features/experience/presentation/widgets/experience_screen_body_form.dart';

class ExperienceScreenBodyContainerOfForm extends StatelessWidget {
  const ExperienceScreenBodyContainerOfForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.neutral[300]!),
        borderRadius: BorderRadius.circular(12),
      ),
      child: const ExperienceScreenBodyForm(),
    );
  }
}
