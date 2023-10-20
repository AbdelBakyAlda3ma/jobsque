import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/get_portfolios_bloc/get_portfolios_bloc.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/portfolio_operation_bloc/portfolio_operation_bloc.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_screen_safe_area.dart';

@RoutePage()
class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetPortfoliosBloc>(
          create: (context) =>
              sL.get<GetPortfoliosBloc>()..add(GetPortfoliosEvent()),
        ),
        BlocProvider<PortfolioOperationBloc>(
          create: (context) => sL.get<PortfolioOperationBloc>(),
        ),
      ],
      child: const PortfolioScreenSafeArea(),
    );
  }
}
