import 'package:flutter/material.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_container.dart';

class ProfileBodySliverAppBar extends StatelessWidget {
  const ProfileBodySliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      automaticallyImplyLeading: false,
      pinned: false,
      snap: false,
      floating: false,
      expandedHeight: 500,
      flexibleSpace: FlexibleSpaceBar(
        background: ProfileContainer(),
      ),
    );
  }
}
