import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/core/widgets/custom_step_progress_icon.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/cubits/compelete_job_application_cubit/compelete_job_application_cubit.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/biodata_step_content.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/apply_job_stepper_custom_steps_label.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/type_of_work_step_content.dart';
import 'package:jobseque/features/apply_job/presentation/widgets/upload_portfolio_step_content.dart';
import '../../../../core/widgets/custom_step.dart';
import '../../../../core/widgets/custom_stepper.dart';

class ApplyJobStepper extends StatefulWidget {
  final ActiveAppliedJobEntity? activeAppliedJob;

  const ApplyJobStepper({super.key, this.activeAppliedJob});

  @override
  State<ApplyJobStepper> createState() => _ApplyJobStepperState();
}

class _ApplyJobStepperState extends State<ApplyJobStepper> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompeleteJobApplicationCubit,
        CompeleteJobApplicationState>(
      listener: mappingBlocListener,
      builder: (context, state) {
        return _buildCustomStepper(listOfCVs: listOfCVs);
      },
    );
  }

  late List<String> listOfCVs;
  late PageController pageController;
  @override
  void initState() {
    pageController = PageController();
    listOfCVs = compeleteJobApplicationCubit.getTypeOfWorkList();
    log((widget.activeAppliedJob.toString()));
    if (widget.activeAppliedJob != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (pageController.hasClients) {
          pageController
              .jumpToPage(widget.activeAppliedJob!.applicationStepProgress!);
        }
      });

      initActiveJob();
    }
    super.initState();
  }

  void initActiveJob() {
    compeleteJobApplicationCubit.applyJobEntity =
        widget.activeAppliedJob!.applyJobEntity!;
    addActiveApplicationBloc.applyJobEntity =
        widget.activeAppliedJob!.applyJobEntity!;
    addActiveApplicationBloc.currentStep =
        widget.activeAppliedJob!.applicationStepProgress!;
    log(widget.activeAppliedJob!.applicationStepProgress!.toString());
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  CompeleteJobApplicationCubit get compeleteJobApplicationCubit {
    return BlocProvider.of<CompeleteJobApplicationCubit>(context);
  }

  AddActiveApplicationBloc get addActiveApplicationBloc {
    return BlocProvider.of<AddActiveApplicationBloc>(context);
  }

  int get currentStep {
    return addActiveApplicationBloc.currentStep;
  }

  set currentStep(int currentStep) {
    addActiveApplicationBloc.currentStep = currentStep;
  }

  List<CustomStep> _getSteps({required List<String> listOfCVs}) => [
        CustomStep(
          content: const BiodataStepContent(),
          state: currentStep > 0
              ? CustomStepState.complete
              : CustomStepState.indexed,
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep >= 0,
            labelText: 'biodata',
          ),
        ),
        CustomStep(
          content: TypeOfWorkStepContent(
            listOfCVs: listOfCVs,
          ),
          state: currentStep > 1
              ? CustomStepState.complete
              : CustomStepState.indexed,
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep >= 1,
            labelText: 'Type of work',
          ),
        ),
        CustomStep(
          content: const UploadPortfolioStepContent(),
          label: ApplyJobStepperCustomStepsLabel(
            isActive: currentStep == 2,
            labelText: 'Upload portfolio',
          ),
        ),
      ];

  void _onStepTapped(step) {
    setState(() {
      currentStep = step;
    });
  }

  void _onStepContinue() {
    currentStep++;
    if (pageController.hasClients) {
      pageController.nextPage(
          duration: const Duration(milliseconds: 60), curve: Curves.linear);
    }
  }

  void _onSubmit() {
    BlocProvider.of<ApplyJobBloc>(context).add(
      ApplyJobEvent(
        applyJobEntity: addActiveApplicationBloc.applyJobEntity,
      ),
    );
    log(addActiveApplicationBloc.applyJobEntity.toString());
  }

  handlingStepperInformation() {
    switch (currentStep) {
      case 0:
        return compeleteJobApplicationCubit.bioInformationStep;

      case 1:
        return compeleteJobApplicationCubit.typeOfWorkStep;

      case 2:
        return compeleteJobApplicationCubit.otherFileStep;
    }
  }

  void mappingBlocListener(context, state) {
    if (state is EmptyBioFieldState) {
      showErrorSnackBar(
        context: context,
        message: 'Please fill required fields',
      );
    }
    if (state is WorkTypeNotChoosenState) {
      showErrorSnackBar(
        context: context,
        message: 'Please Choose work type portfolio first',
      );
    }
    if (state is OtherFileNotChoosen) {
      showErrorSnackBar(
        context: context,
        message: 'Please upload other file first',
      );
    }
    if (state is CompleteBioFildsState) {
      _onStepContinue();
    }
    if (state is WorkTypeHasChoosenState) {
      _onStepContinue();
    }
    if (state is OtherFileHasChoosen) {
      _onSubmit();
    }
  }

  Widget _buildCustomStepper({
    List<String>? listOfCVs,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: CustomStepper(
        currentStep: currentStep,
        customSteps: _getSteps(listOfCVs: listOfCVs ?? []),
        onStepTapped: _onStepTapped,
        onStepContinue: handlingStepperInformation(),
        pageController: pageController,
      ),
    );
  }
}
