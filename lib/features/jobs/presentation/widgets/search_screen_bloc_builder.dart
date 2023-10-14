import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/search_bloc/search_bloc.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_screen_body_result_not_found.dart';
import 'package:jobseque/features/jobs/presentation/widgets/search_screen_body_success.dart';
import 'package:jobseque/features/jobs/presentation/widgets/shimmer_search_body.dart';
import 'filter_search_section.dart';

class SearchScreenBlocBuilder extends StatelessWidget {
  const SearchScreenBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state is FilteredSearchInvalidInputJobsFailure) {
          showErrorSnackBar(
            context: context,
            message: state.errorMessage,
          );
        }
        if (state is FilteredSearchedNotFoundJobsFailure) {
          context.router.pop();
        }
        if (state is FilteredJobsSuccess) {
          context.router.pop();
        }
      },
      builder: (context, state) {
        if (state is SearchLoading) {
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
