import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_screen_body_result_not_found.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_screen_body_success.dart';
import 'package:jobseque/features/jobs/presentation/widgets/shimmer_search_body.dart';

import '../manager/blocs/bloc/job_bloc.dart';
import 'filter_search_section.dart';

class SearchScreenBlocBuilder extends StatelessWidget {
  const SearchScreenBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<JobBloc, JobState>(
      listener: (context, state) {
        if (state is FilteredSearchInvalidInputJobsFailure) {
          showErrorSnackBar(
            context: context,
            message: state.errorMessage,
          );
        }
        if (state is FilteredSearchedNotFoundJobsFailure) {
          Navigator.pop(context);
        }
        if (state is FilteredJobsSuccess) {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        if (state is JobLoading) {
          return const ShimmerSearchBody();
        }
        if (state is SearchedJobsSuccess) {
          return SearchScreenBodySuccess(
            jobsList: state.searchedJobsList,
          );
        }
        if (state is SearchedJobsFailure) {
          return const SearchScreenBodyResultNotFound();
        }
        if (state is FilteredJobsSuccess) {
          return SearchScreenBodySuccess(
            jobsList: state.filteredJobsList,
          );
        }
        if (state is FilteredSearchedNotFoundJobsFailure) {
          return const SearchScreenBodyResultNotFound();
        } else {
          return const FilterSearchSection();
        }
      },
    );
  }
}
