// ignore_for_file: missing_required_param
import 'package:dio/dio.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/portfolio/data/models/portfolio_model.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';

abstract class PortfolioRemoteDataSource {
  Future<List<PortfolioEntity>> getPortofolios();
  Future<void> deletePortfolio({
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
      'cv_file': await MultipartFile.fromFile(
        portfolio.cvFile!,
      ),
      'image': await MultipartFile.fromFile(portfolio.cvFile!),
      'name': portfolio.cvFile!.split('/').last,
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
    for (var portfolio in portfoliosListData['data']['portfolio']) {
      portfoliosList.add(
        PortfolioModel.fromMap(portfolio),
      );
    }

    if (portfoliosList.isNotEmpty) {
      return portfoliosList;
    } else {
      throw NoPortfoliosYetException();
    }
  }

  @override
  Future<void> deletePortfolio({
    required int portfolioID,
  }) async {
    await apiService.delete(
      path: '/user/profile/portofolios/$portfolioID',
    );
  }
}
