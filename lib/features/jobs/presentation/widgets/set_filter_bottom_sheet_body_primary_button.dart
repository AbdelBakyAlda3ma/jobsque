import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/search_bloc/search_bloc.dart';
import '../../../../core/widgets/primary_button.dart';

class SetFilterBottomSheetBodyPrimaryButton extends StatelessWidget {
  const SetFilterBottomSheetBodyPrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: PrimaryButton.large(
        onPressed: () {
          BlocProvider.of<SearchBloc>(context).add(FilterSearchEvent());
        },
        text: 'Show result',
      ),
    );
  }
}
