import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';
import '../../../../core/widgets/primary_button.dart';

class WorkLocationBodyPrimaryButton extends StatelessWidget {
  const WorkLocationBodyPrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: BlocBuilder<WorkPrefrencesBloc, WorkPrefrencesState>(
        builder: (context, state) {
          return PrimaryButton.large(
            text: 'Next',
            onPressed: () {
              BlocProvider.of<WorkPrefrencesBloc>(context)
                  .add(WorkPrefrencesEvent());
            },
            child: state is WorkPrefrencesLoading
                ? const CircularProgressIndicator(
                    color: Colors.white,
                  )
                : null,
          );
        },
      ),
    );
  }
}
