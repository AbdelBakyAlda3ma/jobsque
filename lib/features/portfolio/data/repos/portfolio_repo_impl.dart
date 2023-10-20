import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/functions/pick_cv_file.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/features/portfolio/data/data_sources/portfolio_local_data_source.dart';
import 'package:jobseque/features/portfolio/data/data_sources/portfolio_remote_data_source.dart';
import 'package:jobseque/features/portfolio/data/models/portfolio_model.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';
import 'package:jobseque/features/portfolio/domain/repo/portfolio_repo.dart';
import 'package:jobseque/features/profile/data/data_sources/profile_local_data_source.dart';

class PortfolioRepoImpl extends PortfolioRepo {
  PortfolioLocalDataSource portfolioLocalDataSource;
  PortfolioRemoteDataSource portfolioRemoteDataSource;
  final ProfileLocalDataSource _profileLocalDataSource;
  PortfolioRepoImpl({
    required this.portfolioLocalDataSource,
    required this.portfolioRemoteDataSource,
  }) : _profileLocalDataSource = ProfileLocalDataSourceImpl();

  @override
  Future<Either<Failure, Unit>> addPortfolio() async {
    try {
      PlatformFile? platformFile = await pickCvFile();

      var portfolioName = platformFile!.name;
      var cVFlilePath = platformFile.path;
      var pathOfProfileImage = _profileLocalDataSource.getProfileImagePath();
      PortfolioModel portfolio = PortfolioModel(
        image: pathOfProfileImage,
        cvFile: cVFlilePath,
        name: portfolioName,
      );
      var addedPortfolio =
          await portfolioRemoteDataSource.addPortfolio(portfolio: portfolio);
      await portfolioLocalDataSource.addPortfolio(
        portfolioToCached: addedPortfolio,
      );
      await JobsqueSharedPrefrences.setBool(
        kPortfolioAddedAndNeedToRefresh,
        true,
      );
      return const Right(unit);
    } on CanceldExeption {
      return Left(CanceledFailure());
    } on NoProfileImageYetException {
      return Left(NoProfileImageYetFailure());
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, List<PortfolioEntity>>> getPortfolios() async {
    var profile = _profileLocalDataSource.getProfile();
    try {
      var profile = _profileLocalDataSource.getProfile();

      List<PortfolioEntity> portfoliosList = [];
      bool? isNeedToRefresh =
          JobsqueSharedPrefrences.getBool(kPortfolioAddedAndNeedToRefresh);
      if (isNeedToRefresh == true) {
        portfoliosList = await portfolioRemoteDataSource.getPortofolios();
      } else {
        portfoliosList = portfolioLocalDataSource.getPortofolios();
      }
      profile.numbersOfPortfolios = portfoliosList.length;
      print(profile.numbersOfPortfolios.toString());
      log(profile.numbersOfPortfolios.toString());
      return Right(portfoliosList);
    } on NoPortfoliosYetException {
      profile.numbersOfPortfolios = 0;
      print(profile.numbersOfPortfolios.toString());
      log(profile.numbersOfPortfolios.toString());
      return Left(NoPortfoliosYetFailure());
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, Unit>> deletePortfolio(
      {required PortfolioEntity portfolio}) async {
    try {
      await portfolioRemoteDataSource.deletePortfolio(
          portfolioID: portfolio.id!);
      await portfolioLocalDataSource.deletePortfolio(
          portfolioToDeleted: portfolio);
      await JobsqueSharedPrefrences.setBool(
          kPortfolioAddedAndNeedToRefresh, true);
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
