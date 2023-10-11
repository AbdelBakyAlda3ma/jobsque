// ignore_for_file: missing_required_param

import 'package:dio/dio.dart';
import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/portfolio/data/models/portfolio_model.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';

abstract class PortfolioRemoteDataSource {
  Future<List<PortfolioEntity>> getPortofolios();
  Future<PortfolioEntity> deletePortfolio({
    required int portfolioID,
  });
  Future<PortfolioEntity> addPortfolio({
    required PortfolioModel portfolio,
  });
}

class PortfolioRemoteDataSourceImpl extends PortfolioRemoteDataSource {
  ApiService apiService;
  PortfolioRemoteDataSourceImpl({
    required this.apiService,
  });
  @override
  Future<PortfolioEntity> addPortfolio({
    required PortfolioModel portfolio,
  }) async {
    final payload = FormData.fromMap({
      'name': portfolio.name,
      'cv_file': await MultipartFile.fromFile(portfolio.cvFile!),
      'image': await MultipartFile.fromFile(portfolio.image!),
    });
    var portfolioData = await apiService.post(
      path: '/user/profile/portofolios/',
      body: payload,
    );
    var addedPortfolio = PortfolioModel.fromMap(portfolioData['data']);
    return addedPortfolio;
  }

  @override
  Future<List<PortfolioEntity>> getPortofolios() async {
    var portfoliosListData = await apiService.get(
      path: '/user/profile/portofolios/',
    );
    List<PortfolioModel> portfoliosList = [];
    for (var portfolio in portfoliosListData) {
      portfoliosList.add(
        PortfolioModel.fromMap(portfolio),
      );
    }
    return portfoliosList;
  }

  @override
  Future<PortfolioEntity> deletePortfolio({
    required int portfolioID,
  }) async {
    var deletedPortfolio = await apiService.delete(
      path: '/user/profile/portofolios/$portfolioID',
    );
    return deletedPortfolio;
  }
}
