import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/initial_search_screen_app_bar.dart';
import '../widgets/initial_search_screen_body.dart';

class InitialSearchScreen extends StatelessWidget {
  const InitialSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            VerticalSpace(space: 14),
            InitialSearchScreenAppBar(),
            VerticalSpace(space: 22),
            SearchScreenBody()
          ],
        ),
      ),
    );
  }
}
