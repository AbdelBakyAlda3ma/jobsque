import 'package:jobseque/core/utils/api_services.dart';
import 'package:jobseque/core/utils/constances.dart';
import 'package:jobseque/core/utils/user_data_using_shared_preferences.dart';
import 'package:jobseque/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> loginUser({required Map loginData});
  Future<UserModel> registerUser({required Map registerData});
  Future<UserModel> changePassword({required String password});
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final ApiService apiService;

  AuthRemoteDataSourceImpl({
    required this.apiService,
  });

  @override
  Future<UserModel> loginUser({required Map loginData}) async {
    // ignore: missing_required_param
    final userData = await apiService.post(
      path: '/auth/login',
      body: loginData,
      contentType: 'multipart/form-data',
    );
    final UserModel userModel = UserModel.fromServerForLogin(userData);
    return userModel;
  }

  @override
  Future<UserModel> registerUser({required Map registerData}) async {
    // ignore: missing_required_param
    final userData = await apiService.post(
      path: '/auth/register',
      body: registerData,
    );
    final UserModel userModel = UserModel.fromServerForRegister(userData);
    return userModel;
  }

  @override
  Future<UserModel> changePassword({required String password}) async {
    final userData = await apiService.post(
      path: '/auth/user/update',
      body: {
        'name': JobsqueSharedPrefrences.getString(kUserName),
        'password': password,
      },
      token: JobsqueSharedPrefrences.getString(kToken),
      contentType: 'multipart/form-data',
    );
    final UserModel userModel = UserModel.fromServerForChangePassword(userData);
    return userModel;
  }
}
