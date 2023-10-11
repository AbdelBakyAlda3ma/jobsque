import 'package:flutter/material.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/features/education/presentation/widgets/education_screen_body_form.dart';

class EducationScreenBodyContainerOfForm extends StatelessWidget {
  const EducationScreenBodyContainerOfForm({
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
      child: const EducationScreenBodyForm(),
    );
  }
}
