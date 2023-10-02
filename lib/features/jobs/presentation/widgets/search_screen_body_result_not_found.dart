import 'package:flutter/material.dart';
import 'package:jobseque/features/jobs/presentation/widgets/filter_search_section.dart';
import 'search_screen_body_not_found.dart';

class SearchScreenBodyResultNotFound extends StatelessWidget {
  const SearchScreenBodyResultNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          FilterSearchSection(),
          SearchScreenBodyNotFound(),
        ],
      ),
    );
  }
}
