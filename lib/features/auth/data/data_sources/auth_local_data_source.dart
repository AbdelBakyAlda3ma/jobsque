import '../../../../core/errors/exception.dart';
import '../../../../core/utils/constances.dart';
import '../../../../core/utils/user_data_using_shared_preferences.dart';
import '../models/user_model.dart';

abstract class AuthLocalDataSource {
  Future<UserModel> getCurrentUser();
  Future<bool> logOut();
  Future<void> saveUser(UserModel userToCache);
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthLocalDataSourceImpl();

  @override
  Future<UserModel> getCurrentUser() {
    final jsonString = JobsqueSharedPrefrences.getString(kCachedUser);
    if (jsonString != null) {
      return Future.value(
        UserModel.fromJson(jsonString),
      );
    } else {
      throw UserNotFoundException();
    }
  }

  @override
  Future<void> saveUser(UserModel userToCache) {
    JobsqueSharedPrefrences.setString(kUserName, userToCache.name);
    JobsqueSharedPrefrences.setInt(kUserID, userToCache.id);
    JobsqueSharedPrefrences.setString(kUserEmail, userToCache.email);
    JobsqueSharedPrefrences.setString(kToken, userToCache.token!);

    return JobsqueSharedPrefrences.setString(
      kCachedUser,
      userToCache.toJson(),
    );
  }

  @override
  Future<bool> logOut() {
    final isDone = JobsqueSharedPrefrences.remove(kCachedUser);
    return isDone;
  }
}
