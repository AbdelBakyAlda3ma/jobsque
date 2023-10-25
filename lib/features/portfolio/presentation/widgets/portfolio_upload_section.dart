import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/portfolio_operation_bloc/portfolio_operation_bloc.dart';
import '../../../../core/utils/global/app_colors.dart';
import '../../../../core/utils/global/custom_text_styles.dart';
import '../../../../core/widgets/upload_file_area.dart';
import '../../../../core/widgets/vertical_space.dart';

class PortfolioUploadSection extends StatelessWidget {
  const PortfolioUploadSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Add portfolio here',
          style: CustomTextStyles.h4Medium.copyWith(
            color: AppColors.neutral[900],
          ),
        ),
        const VerticalSpace(space: 16),
        UploadFileArea(
          onPressed: () {
            BlocProvider.of<PortfolioOperationBloc>(context)
                .add(AddPortfolioEvent());
          },
        ),
      ],
    );
  }
}
