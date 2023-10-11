import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/errors/failure.dart';
import 'package:jobseque/core/utils/constances.dart';
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
  Future<Either<Failure, PortfolioEntity>> addPortfolio({
    required String pathOfcV,
    required String portfolioName,
  }) async {
    try {
      var profile = _profileLocalDataSource.getProfile();
      var pathOfProfileImage = _profileLocalDataSource.getProfileImagePath();
      PortfolioModel portfolio = PortfolioModel(
        image: pathOfProfileImage,
        cvFile: pathOfcV,
        name: portfolioName,
      );
      var addedPortfolio =
          await portfolioRemoteDataSource.addPortfolio(portfolio: portfolio);
      await portfolioLocalDataSource.addPortfolio(
          portfolioToCached: addedPortfolio);
      await JobsqueSharedPrefrences.setBool(
          kPortfolioAddedAndNeedToRefresh, true);
      profile.numbersOfPortfolios++;
      return Right(addedPortfolio);
    } on NoProfileImageYetException {
      return Left(NoProfileImageYetFailure());
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }

  @override
  Future<Either<Failure, List<PortfolioEntity>>> getPortfolios() async {
    try {
      List<PortfolioEntity> portfoliosList = [];
      bool? isNeedToRefresh =
          JobsqueSharedPrefrences.getBool(kPortfolioAddedAndNeedToRefresh);
      if (isNeedToRefresh == true) {
        portfoliosList = await portfolioRemoteDataSource.getPortofolios();
      } else {
        portfoliosList = portfolioLocalDataSource.getPortofolios();
      }
      return Right(portfoliosList);
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
      return const Right(unit);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
