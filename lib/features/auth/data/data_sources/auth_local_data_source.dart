import 'package:hive_flutter/adapters.dart';
import 'package:jobseque/features/apply_job/domain/entities/active_applied_job_entity.dart';
import 'package:jobseque/features/apply_job/domain/entities/apply_job_entity.dart';
import 'package:jobseque/features/jobs/domain/entities/job_entity.dart';
import 'package:jobseque/features/portfolio/domain/entities/portfolio_entity.dart';
import 'package:jobseque/features/profile/domain/entities/profile_entity.dart';

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
  Future<bool> logOut() async {
    await Hive.box<ProfileEntity>(kProfileBox).clear();
    await Hive.box<PortfolioEntity>(kPortfolioBox).clear();
    await Hive.box<ApplyJobEntity>(kApplyJobBox).clear();
    await Hive.box<JobEntity>(kJoBsBox).clear();
    await Hive.box<ActiveAppliedJobEntity>(kActiveAppliedJobBox).clear();
    final isDone = await JobsqueSharedPrefrences.remove(kCachedUser);
    return isDone;
  }
}
