import 'package:hive/hive.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';

abstract class PortfolioLocalDataSource {
  Future<void> addPortfolio({
    required PortfolioEntity portfolioToCached,
  });
  Future<void> deletePortfolio({
    required PortfolioEntity portfolioToDeleted,
  });
  List<PortfolioEntity> getPortofolios();
}

class PortfolioLocalDataSourceImpl extends PortfolioLocalDataSource {
  @override
  List<PortfolioEntity> getPortofolios() {
    var box = Hive.box<PortfolioEntity>(kPortfolioBox);
    return box.values.toList();
  }

  @override
  Future<void> addPortfolio({
    required PortfolioEntity portfolioToCached,
  }) async {
    var box = Hive.box<PortfolioEntity>(kPortfolioBox);
    await box.add(portfolioToCached);
  }

  @override
  Future<void> deletePortfolio({
    required PortfolioEntity portfolioToDeleted,
  }) async {
    var box = Hive.box<PortfolioEntity>(kPortfolioBox);
    await box.delete(portfolioToDeleted);
  }
}
