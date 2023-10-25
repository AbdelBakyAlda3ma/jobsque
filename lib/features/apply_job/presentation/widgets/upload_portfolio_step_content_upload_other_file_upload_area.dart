import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobseque/core/strings/failures.dart';
import 'package:jobseque/core/utils/functions/snackbar_message.dart';
import 'package:jobseque/core/widgets/uploaded_file_list_tile.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/cubits/compelete_job_application_cubit/compelete_job_application_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../core/widgets/upload_file_area.dart';

class UploadPortfolioStepContentUploadOtherFileUploadArea
    extends StatelessWidget {
  const UploadPortfolioStepContentUploadOtherFileUploadArea({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CompeleteJobApplicationCubit,
        CompeleteJobApplicationState>(
      listener: (context, state) {
        if (state is AddOtherFileFailure) {
          showErrorSnackBar(
            context: context,
            message: state.errorMsg,
          );
        }
        if (state is CancelAddingOtherFileState) {
          showErrorSnackBar(
            context: context,
            message: CANCELED_BY_USER_FAILURE_MESSAGE,
          );
        }
        if (state is AddOtherFileSucces) {
          showSuccessSnackBar(
            context: context,
            message: 'Added successfully',
          );
          BlocProvider.of<CompeleteJobApplicationCubit>(context)
              .applyJobEntity
              .otherFile = state.otherFilePath;
          BlocProvider.of<AddActiveApplicationBloc>(context)
              .applyJobEntity
              .otherFile = state.otherFilePath;
        }
      },
      buildWhen: (previous, current) {
        if (current is! AddOtherFileSucces) {
          return false;
        } else {
          return true;
        }
      },
      builder: (context, state) {
        if (state is AddOtherFileSucces) {
          return UploadedFileListTile(
            cvTitle: state.otherFileName,
          );
        } else if (state is AddOtherFileLodingState) {
          return ModalProgressHUD(
            inAsyncCall: true,
            child: UploadFileArea(
              onPressed: () {},
            ),
          );
        } else {
          return UploadFileArea(
            onPressed: () {
              BlocProvider.of<CompeleteJobApplicationCubit>(context)
                  .addOtherFile();
            },
          );
        }
      },
    );
  }
}
