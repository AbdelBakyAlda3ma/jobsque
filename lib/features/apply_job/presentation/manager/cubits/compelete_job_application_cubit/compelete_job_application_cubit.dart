import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/functions/pick_cv_file.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';
part 'compelete_job_application_state.dart';

class CompeleteJobApplicationCubit extends Cubit<CompeleteJobApplicationState> {
  ApplyJobEntity applyJobEntity = ApplyJobEntity();

  CompeleteJobApplicationCubit() : super(CompeleteJobApplicationInitial());

  void bioInformationStep() {
    if (applyJobEntity.name == null ||
        applyJobEntity.email == null ||
        applyJobEntity.mobile == null) {
      emit(EmptyBioFieldState());
    } else {
      emit(CompleteBioFildsState());
    }
  }

  void typeOfWorkStep() {
    if (applyJobEntity.workType == null) {
      emit(WorkTypeNotChoosenState());
    } else {
      emit(WorkTypeHasChoosenState());
    }
  }

  List<PortfolioEntity> _getPortofolios() {
    var box = Hive.box<PortfolioEntity>(kPortfolioBox);
    var portfoliosList = box.values.toList();
    return portfoliosList;
  }

  List<String> getTypeOfWorkList() {
    var listOfPortfolios = _getPortofolios();
    var listOfCVs = listOfPortfolios
        .map((portfolio) => portfolio.cvFile!.split('_').first)
        .toList();
    return listOfCVs;
  }

  void otherFileStep() {
    if (applyJobEntity.otherFile == null) {
      emit(OtherFileNotChoosen());
    } else {
      emit(OtherFileHasChoosen());
    }
  }

  Future<void> addOtherFile() async {
    try {
      var plateformFile = await pickCvFile();

      var filePath = plateformFile!.path;
      var fileName = plateformFile.name;
      emit(
        AddOtherFileSucces(
          otherFilePath: filePath!,
          otherFileName: fileName,
        ),
      );
    } on CanceldExeption {
      emit(CancelAddingOtherFileState());
    } on Exception catch (e) {
      log(e.toString());
      emit(
        AddOtherFileFailure(
          errorMsg: e.toString(),
          // 'Some thig went wrong, please try again',
        ),
      );
    }
  }
}
