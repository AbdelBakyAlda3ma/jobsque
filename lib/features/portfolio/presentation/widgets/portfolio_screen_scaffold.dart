import 'package:flutter/material.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_screen_app_bar.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_screen_body.dart';

class PortfolioScreenScaffold extends StatelessWidget {
  const PortfolioScreenScaffold({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PortFolioScreenAppBar(),
      body: PortfolioScreenBody(),
    );
  }
}
