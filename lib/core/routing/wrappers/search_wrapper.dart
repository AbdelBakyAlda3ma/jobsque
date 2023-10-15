import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/search_bloc/search_bloc.dart';

@RoutePage()
class SearchWrapper extends StatelessWidget {
  const SearchWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => sL.get<SearchBloc>(),
      child: const AutoRouter(),
    );
  }
}
