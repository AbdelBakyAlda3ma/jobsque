import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/loding_screen.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';

class HasCurrentUserWidgetBlocConsumer extends StatelessWidget {
  const HasCurrentUserWidgetBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetCurrentUserBloc, GetCurrentUserState>(
      listener: (context, state) {
        if (state is GetCurrentUserSuccess) {
          Future.delayed(
            const Duration(milliseconds: 2000),
            () {
              context.router.pushAndPopUntil(
                HomeRoute(
                  user: state.user,
                ),
                predicate: (route) => route.isCurrent,
              );
            },
          );
        }
        if (state is GetCurrentUserFailure) {
          Future.delayed(
            const Duration(milliseconds: 2000),
            () {
              context.router.pushAndPopUntil(
                const LoginRoute(),
                predicate: (route) => route.isCurrent,
              );
            },
          );
        }
      },
      builder: (context, state) {
        return const LoadingScreen();
      },
    );
  }
}
