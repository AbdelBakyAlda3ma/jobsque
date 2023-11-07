import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/core/widgets/loding_widget.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/log_out_bloc/log_out_bloc.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_screen_scaffold.dart';

class ProfileScreenSafeArea extends StatelessWidget {
  const ProfileScreenSafeArea({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocConsumer<LogOutBloc, LogOutState>(
        listener: (context, state) {
          if (state is LogOutSuccess) {
            context.router.push(
              const HasCurrenUserRoute(),
            );
          }
          if (state is LogOutFailure) {
            showErrorSnackBar(
              context: context,
              message: state.errMsg,
            );
          }
        },
        builder: (context, state) {
          if (state is LogOutFailure || state is LogOutInitial) {
            return ProfileScreenScaffold(
              routeName: routeName,
            );
          } else {
            return const LoadingWidget();
          }
        },
      ),
    );
  }
}
