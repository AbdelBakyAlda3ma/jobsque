import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_app_bar.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_screen_body.dart';

@RoutePage()
class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'Portfolio'),
        body: PortfolioScreenBody(),
      ),
    );
  }
}
