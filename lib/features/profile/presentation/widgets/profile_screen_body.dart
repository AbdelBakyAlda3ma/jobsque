import 'package:flutter/material.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_body_sliver_app_bar.dart';
import 'package:jobseque/features/profile/presentation/widgets/profile_settings.dart';

class ProfileScreenBody extends StatelessWidget {
  const ProfileScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: <Widget>[
        //2
        ProfileBodySliverAppBar(),
        //3
        ProfileSettings(),
      ],
    );
  }
}
