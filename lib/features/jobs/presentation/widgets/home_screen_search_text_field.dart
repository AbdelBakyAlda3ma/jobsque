import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/widgets/custom_search_text_field.dart';

class HomeScreenSearchTextField extends StatefulWidget {
  const HomeScreenSearchTextField({super.key});

  @override
  State<HomeScreenSearchTextField> createState() =>
      _HomeScreenSearchTextFieldState();
}

class _HomeScreenSearchTextFieldState extends State<HomeScreenSearchTextField> {
  FocusNode searchFocus = FocusNode();

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
            focusNode: searchFocus,
            hintText: 'Search....',
            onTapOutside: (envet) {
              searchFocus.unfocus();
            },
            onTap: () {
              context.router.push(const InitialSearchRoute());
            },
          ),
        ],
      ),
    );
  }
}
