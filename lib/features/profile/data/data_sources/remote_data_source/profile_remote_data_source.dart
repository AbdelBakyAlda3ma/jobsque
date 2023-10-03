// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: missing_required_param

import 'package:dio/dio.dart';
import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/profile/data/models/education_model.dart';
import 'package:jobseque/features/profile/data/models/experience_model.dart';
import 'package:jobseque/features/profile/data/models/portfolio_model.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';
import 'package:jobseque/features/profile/domain/entities/education_entity.dart';
import 'package:jobseque/features/profile/domain/entities/portfolio_entity.dart';
import '../../../domain/entities/experience_entity.dart';
import '../../../domain/entities/profile_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<EducationEntity> addEducatoin({
    required EducationModel education,
  });
  Future<ExperienceEntity> addExperience({
    required ExperienceModel experience,
  });
  Future<ProfileEntity> addPresonalDetails({
    required ProfileModel profileWithPersonalDetails,
  });
  Future<ProfileEntity> editProfile({
    required ProfileModel profileWithEditData,
  });
  Future<PortfolioEntity> addPortfolio({
    required PortfolioModel portfolio,
  });
  Future<PortfolioEntity> deletePortfolio({
    required int portfolioID,
  });
  Future<ProfileEntity> addProfileLanguage({
    required ProfileModel profileWithLanguage,
  });
  Future<ProfileEntity> editAboutMe({
    required ProfileModel profileWithAboutMe,
  });

  Future<ProfileEntity> getProfile();
  Future<List<PortfolioEntity>> getPortofolios();
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  ApiService apiService;
  ProfileRemoteDataSourceImpl({
    required this.apiService,
  });

  @override
  Future<EducationEntity> addEducatoin(
      {required EducationModel education}) async {
    var educationData = await apiService.post(
      path: '/education',
      queryParameters: education.toMap(),
    );
    var educationModel = EducationModel.fromMap(educationData);
    return educationModel;
  }

  @override
  Future<ExperienceEntity> addExperience({
    required ExperienceModel experience,
  }) async {
    var experienceData = await apiService.post(
      path: '/education',
      queryParameters: experience.toMap(),
    );
    var experienceModel = ExperienceModel.fromMap(experienceData);
    return experienceModel;
  }

  @override
  Future<ProfileEntity> addPresonalDetails({
    required ProfileModel profileWithPersonalDetails,
  }) async {
    var updatedProfileData = await apiService.put(
      path: '/user/profile/edit',
      queryParameters: profileWithPersonalDetails.toMap(),
    );
    var updatedProfile = ProfileModel.fromMap(updatedProfileData['data']);

    return updatedProfile;
  }

  @override
  Future<ProfileEntity> addProfileLanguage({
    required ProfileModel profileWithLanguage,
  }) async {
    var updatedProfileData = await apiService.put(
      path: '/user/profile/edit',
      queryParameters: profileWithLanguage.toMap(),
    );
    var updatedProfile = ProfileModel.fromMap(updatedProfileData['data']);

    return updatedProfile;
  }

  @override
  Future<ProfileEntity> editAboutMe({
    required ProfileModel profileWithAboutMe,
  }) async {
    var updatedProfileData = await apiService.put(
      path: '/user/profile/edit',
      queryParameters: profileWithAboutMe.toMap(),
    );
    var updatedProfile = ProfileModel.fromMap(updatedProfileData['data']);

    return updatedProfile;
  }

  @override
  Future<ProfileEntity> editProfile({
    required ProfileModel profileWithEditData,
  }) async {
    var updatedProfileData = await apiService.put(
      path: '/user/profile/edit',
      queryParameters: profileWithEditData.toMap(),
    );
    var updatedProfile = ProfileModel.fromMap(updatedProfileData['data']);

    return updatedProfile;
  }

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
  Future<ProfileEntity> getProfile() async {
    var profileData = await apiService.get(
      path: '/user/profile/portofolios/',
    );
    var profile = ProfileModel.fromMap(profileData['data']);
    return profile;
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
