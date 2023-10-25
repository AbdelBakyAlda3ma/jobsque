import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/global/icons_jobeque_icons.dart';
import 'package:jobseque/core/widgets/horizontal_space.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/portfolio_operation_bloc/portfolio_operation_bloc.dart';

class UploadPortfolioListTileActins extends StatelessWidget {
  final PortfolioEntity? portfolio;

  const UploadPortfolioListTileActins({
    super.key,
    this.portfolio,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          IconsJobeque.edit,
          size: 24,
          color: AppColors.primary[500],
        ),
        const HorizontalSpace(space: 8),
        GestureDetector(
          onTap: () {
            if (portfolio != null) {
              BlocProvider.of<PortfolioOperationBloc>(context).add(
                DeletePortfolioEvent(portfolio: portfolio!),
              );
            }
          },
          child: Icon(
            IconsJobeque.closecircle,
            size: 24,
            color: AppColors.danger[500],
          ),
        ),
      ],
    );
  }
}
