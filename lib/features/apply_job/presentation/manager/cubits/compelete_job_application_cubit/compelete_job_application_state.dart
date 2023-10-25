part of 'compelete_job_application_cubit.dart';

sealed class CompeleteJobApplicationState {}

final class CompeleteJobApplicationInitial
    extends CompeleteJobApplicationState {}

final class EmptyBioFieldState extends CompeleteJobApplicationState {}

final class CompleteBioFildsState extends CompeleteJobApplicationState {}

final class WorkTypeNotChoosenState extends CompeleteJobApplicationState {}

final class WorkTypeHasChoosenState extends CompeleteJobApplicationState {}

final class OtherFileNotChoosen extends CompeleteJobApplicationState {}

final class OtherFileHasChoosen extends CompeleteJobApplicationState {}

final class AddOtherFileLodingState extends CompeleteJobApplicationState {}

final class CancelAddingOtherFileState extends CompeleteJobApplicationState {}

final class AddOtherFileFailure extends CompeleteJobApplicationState {
  String errorMsg;
  AddOtherFileFailure({
    required this.errorMsg,
  });
}

final class AddOtherFileSucces extends CompeleteJobApplicationState {
  String otherFilePath;
  String otherFileName;
  AddOtherFileSucces({
    required this.otherFilePath,
    required this.otherFileName,
  });
}
