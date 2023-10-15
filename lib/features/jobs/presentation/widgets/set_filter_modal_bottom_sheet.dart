import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_bottom_sheet_app_bar.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_modal_bottom_sheet_body.dart';

@RoutePage()
class SetFilterModalBottomSheet extends StatelessWidget {
  const SetFilterModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(24, 40, 24, 9),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SetFilterBottomSheetAppBar(),
          VerticalSpace(space: 28),
          SetFilterModalBottomSheetBody(),
        ],
      ),
    );
  }
}
