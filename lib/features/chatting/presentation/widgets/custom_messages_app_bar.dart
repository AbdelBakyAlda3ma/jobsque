import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';

class CustomMessagesAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomMessagesAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(title: 'Messages');
  }
}
