import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/loding_widget.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';

class HasCurrentUserWidgetBlocConsumer extends StatelessWidget {
  const HasCurrentUserWidgetBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetCurrentUserBloc, GetCurrentUserState>(
      listener: (context, state) async {
        if (state is GetCurrentUserSuccess) {
          await Future.delayed(
            const Duration(milliseconds: 2000),
            () {
              context.router.pushAndPopUntil(
                const HomeRoute(),
                predicate: (route) => false,
              );
            },
          );
        }
        if (state is GetCurrentUserFailure) {
          await Future.delayed(
            const Duration(milliseconds: 2000),
            () {
              context.router.pushAndPopUntil(
                const LoginRoute(),
                predicate: (route) => false,
              );
            },
          );
        }
      },
      builder: (context, state) {
        return const LoadingWidget();
      },
    );
  }
}
