import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/supported_langauages.dart';
import 'package:jobseque/features/profile/presentation/widgets/language_item.dart';

class LanguageScreenBodyListView extends StatefulWidget {
  const LanguageScreenBodyListView({super.key});

  @override
  State<LanguageScreenBodyListView> createState() =>
      _LanguageScreenBodyListViewState();
}

class _LanguageScreenBodyListViewState
    extends State<LanguageScreenBodyListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: LanguageItem(
          isSelected: currentIndex == index,
          country: countries[index],
        ),
      ),
      itemCount: countries.length,
    );
  }
}
