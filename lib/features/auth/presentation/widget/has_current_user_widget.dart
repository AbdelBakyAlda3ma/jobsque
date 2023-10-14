import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';
import 'package:jobseque/features/auth/presentation/widget/has_curren_user_widget_bloc_consumer.dart';

@RoutePage()
class HasCurrenUserWidget extends StatelessWidget {
  const HasCurrenUserWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetCurrentUserBloc>(
      create: (context) =>
          sL.get<GetCurrentUserBloc>()..add(GetCurrentUserEvent()),
      child: const HasCurrentUserWidgetBlocConsumer(),
    );
  }
}
