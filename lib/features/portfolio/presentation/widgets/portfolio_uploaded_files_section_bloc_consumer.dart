import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/loding_widget.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/get_portfolios_bloc/get_portfolios_bloc.dart';
import 'package:jobseque/features/portfolio/presentation/widgets/portfolio_uploaded_files_section_list_view.dart';

class PortfolioUploadedFilesSectionBlocConsumer extends StatelessWidget {
  const PortfolioUploadedFilesSectionBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetPortfoliosBloc, GetPortfoliosState>(
        builder: (context, state) {
          if (state is GetPortfoliosSuccess) {
            return PortfolioUploadedFilesSectionListView(
              portfoliosList: state.portfolios,
            );
          } else if (state is GetPortfoliosNoPortfoliosAddedYet) {
            return Center(
              child: Text(state.errorMsg),
            );
          } else if (state is GetPortfoliosFailure) {
            return Center(
              child: Text(state.errorMsg),
            );
          } else {
            return const LoadingWidget();
          }
        },
      ),
    );
  }
}
