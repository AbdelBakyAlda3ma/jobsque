import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/cubits/compelete_job_application_cubit/compelete_job_application_cubit.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/type_of_work_step_content_list_view_list_tile.dart';
import '../../../../core/widgets/vertical_space.dart';

class TypeOfWorkStepContentListView extends StatefulWidget {
  final List<String> listOfCVs;

  const TypeOfWorkStepContentListView({
    super.key,
    required this.listOfCVs,
  });

  @override
  State<TypeOfWorkStepContentListView> createState() =>
      _TypeOfWorkStepContentListViewState();
}

class _TypeOfWorkStepContentListViewState
    extends State<TypeOfWorkStepContentListView> {
  @override
  void initState() {
    BlocProvider.of<CompeleteJobApplicationCubit>(context)
        .applyJobEntity
        .workType = widget.listOfCVs[currentIndex];
    BlocProvider.of<AddActiveApplicationBloc>(context).applyJobEntity.workType =
        widget.listOfCVs[currentIndex];

    super.initState();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
                BlocProvider.of<CompeleteJobApplicationCubit>(context)
                    .applyJobEntity
                    .workType = widget.listOfCVs[currentIndex];
                BlocProvider.of<AddActiveApplicationBloc>(context)
                    .applyJobEntity
                    .workType = widget.listOfCVs[currentIndex];
              });
            },
            child: TypeOfWorkStepContentListViewListTile(
              job: widget.listOfCVs[index],
              isSelect: index == currentIndex,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const VerticalSpace(space: 16);
        },
        itemCount: widget.listOfCVs.length,
      ),
    );
  }
}
