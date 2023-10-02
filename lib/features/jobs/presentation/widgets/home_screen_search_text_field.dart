import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/widgets/custom_search_text_field.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/bloc/job_bloc.dart';
import 'package:jobseque/features/jobs/presentation/screens/initial_search_screen.dart';

class HomeScreenSearchTextField extends StatefulWidget {
  const HomeScreenSearchTextField({super.key});

  @override
  State<HomeScreenSearchTextField> createState() =>
      _HomeScreenSearchTextFieldState();
}

class _HomeScreenSearchTextFieldState extends State<HomeScreenSearchTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 28,
        left: 24,
        right: 24,
      ),
      child: Column(
        children: [
          CustomSearchTextField(
            hintText: 'Search....',
            onTapOutside: (envet) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const InitialSearchScreen(),
                ),
              ).then(
                (value) => setState(() {
                  BlocProvider.of<JobBloc>(context).add(GetAllJobsEvent());
                }),
              );
            },
          ),
        ],
      ),
    );
  }
}
