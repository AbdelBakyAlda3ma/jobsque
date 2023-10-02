import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/bloc/job_bloc.dart';

import '../../../../core/utils/global/icons_jobeque_icons.dart';
import '../../../../core/widgets/custom_search_text_field.dart';
import '../../../../core/widgets/horizontal_space.dart';

class SearchCustomAppBar extends StatelessWidget {
  final FocusNode textFieldFocus = FocusNode();
  SearchCustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop(true);
            },
            child: const Icon(
              IconsJobeque.arrowleft,
            ),
          ),
          const HorizontalSpace(space: 12),
          Expanded(
            child: CustomSearchTextField(
              focusNode: textFieldFocus,
              onTapOutside: (envet) {
                textFieldFocus.unfocus();
              },
              onChanged: (value) {
                if (value.isNotEmpty) {
                  BlocProvider.of<JobBloc>(context).add(
                    SearchJobsEvent(searchTopic: value),
                  );
                }
              },
              autofocus: true,
              hintText: 'Type something...',
            ),
          ),
        ],
      ),
    );
  }
}
