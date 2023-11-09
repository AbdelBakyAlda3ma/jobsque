import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_search_text_field.dart';

class HomeScreenBodyShimmerSearch extends StatelessWidget {
  const HomeScreenBodyShimmerSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 28,
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          CustomSearchTextField(
            readOnly: true,
            focusNode: FocusNode(),
            hintText: 'Search....',
          ),
        ],
      ),
    );
  }
}
