// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: missing_required_param

import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/features/profile/data/models/profile_model.dart';
import '../../domain/entities/profile_entity.dart';

abstract class ProfileRemoteDataSource {
  Future<ProfileEntity> addPresonalDetails({
    required ProfileModel profileWithPersonalDetails,
  });
  Future<ProfileEntity> editProfile({
    required ProfileModel profileWithEditData,
  });

  Future<ProfileEntity> addProfileLanguage({
    required ProfileModel profileWithLanguage,
  });
  Future<ProfileEntity> editAboutMe({
    required ProfileModel profileWithAboutMe,
  });

  Future<ProfileEntity> getProfile();
}

class ProfileRemoteDataSourceImpl extends ProfileRemoteDataSource {
  ApiService apiService;
  ProfileRemoteDataSourceImpl({
    required this.apiService,
  });

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
  Future<ProfileEntity> getProfile() async {
    var profileData = await apiService.get(
      path: '/user/profile/portofolios',
    );
    var profile = ProfileModel.fromMap(profileData['data']);
    return profile;
  }
}
