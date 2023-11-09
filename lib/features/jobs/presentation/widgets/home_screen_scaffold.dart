import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/core/widgets/custom_bottom_navigation_bar.dart';
import 'package:jobseque/features/jobs/presentation/manager/get_jobs_bloc/get_jobs_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_error_widget.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_app_bar.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_body.dart';
import 'package:jobseque/features/jobs/presentation/widgets/home_screen_body_shimmer.dart';

class HomeScreenScaffold extends StatelessWidget {
  const HomeScreenScaffold({
    super.key,
    required this.routeName,
  });

  final String routeName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeScreenAppBar(
            userName: JobsqueSharedPrefrences.getString(kUserName)!,
          ),
          BlocBuilder<GetJobsBloc, GetJobsState>(
            builder: (context, state) {
              if (state is GetAllJobsFailure) {
                return HomeErrorWidget(
                  errorMessage: state.errorMessage,
                );
              }
              if (state is GetAllJobsSuccess) {
                return HomeScreenBody(
                  jobsList: state.allJobsList,
                );
              } else {
                return const HomeScreenBodyShimmer();
              }
            },
          ),

          // const HomeScreenBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        routeName: routeName,
      ),
    );
  }
}
