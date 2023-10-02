import 'package:flutter/material.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_bottom_sheet_body_primary_button.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_bottom_sheet_drop_down_menu.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_bottom_sheet_job_title_text_field.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_bottom_sheet_job_type_wrap.dart';
import 'package:jobseque/features/jobs/presentation/widgets/set_filter_bottom_sheet_location_text_field.dart';

class SetFilterModalBottomSheetBody extends StatelessWidget {
  const SetFilterModalBottomSheetBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            sliver: const SliverFillRemaining(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SetFilterBottmSheetJobTitleTextField(),
                  VerticalSpace(space: 16),
                  SetFilterBottmSheetLocationTextField(),
                  VerticalSpace(space: 16),
                  SetFilterBottomSheetSalaryDropDownMenu(),
                  VerticalSpace(space: 16),
                  SetFilterBottomSheetJobTypeWraper(),
                  Spacer(),
                  SetFilterBottomSheetBodyPrimaryButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
