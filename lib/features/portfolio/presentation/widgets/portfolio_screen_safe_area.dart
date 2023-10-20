import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/strings/messages.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/get_portfolios_bloc/get_portfolios_bloc.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/portfolio_operation_bloc/portfolio_operation_bloc.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_screen_scaffold.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';

class PortfolioScreenSafeArea extends StatelessWidget {
  const PortfolioScreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        BlocProvider.of<CompleteProfileCubit>(context).getProfileCompletion();
        return true;
      },
      child: SafeArea(
        child: BlocListener<PortfolioOperationBloc, PortFolioOperationState>(
          listener: (context, state) {
            if (state is AddPortfolioFailure) {
              showErrorSnackBar(
                context: context,
                message: state.errorMsg,
              );
            }
            if (state is AddPortfolioSuccess) {
              showSuccessSnackBar(
                context: context,
                message: ADD_SUSCESS_MESSAGE,
              );
              BlocProvider.of<GetPortfoliosBloc>(context)
                  .add(GetPortfoliosEvent());
            }
            if (state is DeletePortfolioFailure) {
              showErrorSnackBar(
                context: context,
                message: state.errorMsg,
              );
            }
            if (state is DeletePortfolioSuccess) {
              showSuccessSnackBar(
                context: context,
                message: DELETE_SUSCESS_MESSAGE,
              );
              BlocProvider.of<GetPortfoliosBloc>(context)
                  .add(GetPortfoliosEvent());
            }
          },
          child: const PortfolioScreenScaffold(),
        ),
      ),
    );
  }
}
