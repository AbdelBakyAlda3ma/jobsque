part of 'compelete_job_application_cubit.dart';

sealed class CompeleteJobApplicationState {}

final class CompeleteJobApplicationInitial
    extends CompeleteJobApplicationState {}

final class EmptyBioFieldState extends CompeleteJobApplicationState {}

final class CompleteBioFildsState extends CompeleteJobApplicationState {}

final class EmptyWorkTypeState extends CompeleteJobApplicationState {}

final class CompleteWorkTypeState extends CompeleteJobApplicationState {}

final class EmptyOtherFileState extends CompeleteJobApplicationState {}

final class CompleteOtherFileState extends CompeleteJobApplicationState {}
