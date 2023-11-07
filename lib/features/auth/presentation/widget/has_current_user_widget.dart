import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';
import 'package:jobseque/features/auth/presentation/widget/has_curren_user_widget_bloc_consumer.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_bloc/get_profile_bloc.dart';

@RoutePage()
class HasCurrenUserScreen extends StatelessWidget {
  const HasCurrenUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetCurrentUserBloc>(
          lazy: false,
          create: (context) => sL.get<GetCurrentUserBloc>()
            ..add(
              GetCurrentUserEvent(),
            ),
        ),
        BlocProvider<GetProfileBloc>(
          lazy: false,
          create: (context) => sL.get<GetProfileBloc>()
            ..add(
              GetProfileEvent(),
            ),
        ),
      ],
      child: const Scaffold(
        body: HasCurrentUserWidgetBlocConsumer(),
      ),
    );
  }
}
