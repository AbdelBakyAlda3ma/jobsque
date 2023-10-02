import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import '../widgets/search_custom_app_bar.dart';
import '../widgets/search_screen_bloc_builder.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

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
