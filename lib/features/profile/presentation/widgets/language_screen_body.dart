import 'package:flutter/material.dart';
import 'package:jobseque/core/dummy/supported_langauages.dart';

import 'language_item.dart';

class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: LanguageItem(
          countryCode: supportedLanguages[2],
        ),
      ),
    );
  }
}
