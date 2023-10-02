import 'package:hive/hive.dart';
import 'package:jobseque/core/errors/exception.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import '../../../domain/entities/portfolio_entity.dart';
import '../../../domain/entities/profile_entity.dart';

abstract class ProfileLocalDataSource {
  Future<void> saveProfile({
    required ProfileEntity profileToCached,
  });
  ProfileEntity getProfile();

  Future<bool> saveProfileImage({
    required String imageFilePath,
  });
  String? getProfileImagePath();

  Future<void> addPortfolio({
    required PortfolioEntity portfolioToCached,
  });
  List<PortfolioEntity> getPortofolios();
}

class ProfileLocalDataSourceImpl extends ProfileLocalDataSource {
  @override
  ProfileEntity getProfile() {
    var box = Hive.box<ProfileEntity>(kProfileBox);
    var profile = box.get(kCurrentProfile);
    if (profile != null) {
      return profile;
    } else {
      throw NoProfileExistException();
    }
  }

  @override
  Future<void> saveProfile({required ProfileEntity profileToCached}) async {
    var box = Hive.box<ProfileEntity>(kProfileBox);
    await box.put(kCurrentProfile, profileToCached);
  }

  @override
  Future<bool> saveProfileImage({required String imageFilePath}) async {
    return await JobsqueSharedPrefrences.setString(
        kProfileImageFilePath, imageFilePath);
  }

  @override
  String? getProfileImagePath() {
    var profileImageFilePath =
        JobsqueSharedPrefrences.getString(kProfileImageFilePath);
    if (profileImageFilePath != null) {
      return profileImageFilePath;
    } else {
      throw NoProfileImageYetException();
    }
  }

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
}
