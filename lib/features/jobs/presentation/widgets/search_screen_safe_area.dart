import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_custom_app_bar.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_screen_bloc_builder.dart';

class SearchSecreenSafeArea extends StatelessWidget {
  const SearchSecreenSafeArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const VerticalSpace(space: 14),
            SearchCustomAppBar(),
            const VerticalSpace(space: 22),
            const SearchScreenBlocBuilder()
          ],
        ),
      ),
    );
  }
}
