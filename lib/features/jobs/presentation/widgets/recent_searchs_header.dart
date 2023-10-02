import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_header.dart';

class RecentSearchsHeader extends StatelessWidget {
  const RecentSearchsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(headerTitle: 'Recent searches');
  }
}
