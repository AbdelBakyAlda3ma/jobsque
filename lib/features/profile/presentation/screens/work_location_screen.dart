import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';
import '../widgets/work_location_screen_body.dart';

@RoutePage()
class WorkLocationScreen extends StatefulWidget {
  const WorkLocationScreen({super.key});

  @override
  State<WorkLocationScreen> createState() => _WorkLocationScreenState();
}

class _WorkLocationScreenState extends State<WorkLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<WorkPrefrencesBloc, WorkPrefrencesState>(
      listener: (context, state) {
        if (state is WorkPrefrencesSuccess) {
          context.router.push(
            const AccountHasBeenSetUpRoute(),
          );
        }
        if (state is WorkPrefrencesFailure) {
          showErrorSnackBar(
            context: context,
            message: state.errorMsg,
          );
        }
      },
      child: const SafeArea(
        child: Scaffold(
          body: WorkLocationScreenBody(),
        ),
      ),
    );
  }
}
