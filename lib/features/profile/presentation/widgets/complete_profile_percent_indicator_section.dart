import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/vertical_space.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_percent_indicator.dart';
import 'package:jobseque/features/profile/presentation/widgets/complete_profile_progress_indicator_footer.dart';

class CompleteProfilePercentIndicatorSection extends StatelessWidget {
  const CompleteProfilePercentIndicatorSection({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompleteProfileCubit, CompleteProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            CompleteProfilePercentIndicator(
              completionProgressIndicator:
                  BlocProvider.of<CompleteProfileCubit>(context)
                      .completionProgeressIndicator,
            ),
            const VerticalSpace(space: 20),
            CompleteProfilePercentIdicatorFooter(
              completionProgressIndicator:
                  BlocProvider.of<CompleteProfileCubit>(context)
                      .completionProgeressIndicator,
            ),
          ],
        );
      },
    );
  }
}
