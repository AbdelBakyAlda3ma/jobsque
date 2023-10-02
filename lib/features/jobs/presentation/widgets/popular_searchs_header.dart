import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/custom_header.dart';

class PopularSearchsHeader extends StatelessWidget {
  const PopularSearchsHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomHeader(headerTitle: 'Popular searches');
  }
}
