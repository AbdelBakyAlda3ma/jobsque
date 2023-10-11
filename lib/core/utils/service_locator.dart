import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:jobseque/features/jobs/data/data_sources/remote_data_source/job_remote_data_source.dart';
import 'package:jobseque/features/jobs/data/repositories/job_repository_impl.dart';
import 'package:jobseque/features/jobs/domain/use_cases/filter_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/get_all_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/search_jobs_use_case.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/bloc/job_bloc.dart';
import 'package:jobseque/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:jobseque/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:jobseque/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:jobseque/features/profile/domain/use_cases/get_profile_use_case.dart';
import 'package:jobseque/features/profile/domain/use_cases/work_prefrences_use_case.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_bloc/get_profile_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';

import '../../features/auth/data/data_sources/local_data_source/auth_local_data_source.dart';
import '../../features/auth/data/data_sources/remote_data_source/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/use_cases/get_curren_user_use_case.dart';
import '../../features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';
import '../network/network_info.dart';
import 'api_services.dart';

final sL = GetIt.instance;

void setUpServiceLocator() {
  sL.registerFactory<GetCurrentUserBloc>(
    () => GetCurrentUserBloc(
      getCurrenUserUseCase:
          GetCurrenUserUseCase(authRepository: sL.get<AuthRepositoryImpl>()),
    ),
  );

  sL.registerFactory<JobBloc>(
    () => JobBloc(
        getAllJobsUseCase:
            GetAllJobsUseCase(jobRepo: sL.get<JobRepositoryImpl>()),
        searchJobsUseCase:
            SearchJobsUseCase(jobRepo: sL.get<JobRepositoryImpl>()),
        filterJobsUseCase:
            FilterJobsUseCase(jobRepo: sL.get<JobRepositoryImpl>())),
  );

  sL.registerFactory<WorkPrefrencesBloc>(
    () => WorkPrefrencesBloc(
      workPreferencesUseCase: WorkPreferencesUseCase(
        profileRepository: sL.get<ProfileRepositoryImpl>(),
      ),
    ),
  );
  sL.registerFactory<GetProfileBloc>(
    () => GetProfileBloc(
      getProfileUseCase: GetProfileUseCase(
        profileRepository: sL.get<ProfileRepositoryImpl>(),
      ),
    ),
  );

  sL.registerSingleton<JobRemoteDataSourceImpl>(
    JobRemoteDataSourceImpl(
      apiService: ApiService(),
    ),
  );

  sL.registerSingleton<AuthRemoteDataSourceImpl>(
    AuthRemoteDataSourceImpl(
      apiService: ApiService(),
    ),
  );

  sL.registerSingleton<AuthLocalDataSourceImpl>(
    AuthLocalDataSourceImpl(),
  );

  sL.registerSingleton<NetworkInfoImpl>(
    NetworkInfoImpl(
      connectionChecker: InternetConnectionChecker(),
    ),
  );
  sL.registerSingleton<AuthRepositoryImpl>(
    AuthRepositoryImpl(
      remoteDataSource: sL.get<AuthRemoteDataSourceImpl>(),
      localDataSource: sL.get<AuthLocalDataSourceImpl>(),
      networkInfo: sL.get<NetworkInfoImpl>(),
    ),
  );

  sL.registerSingleton<JobRepositoryImpl>(
    JobRepositoryImpl(
      jobRemoteDataSource: sL.get<JobRemoteDataSourceImpl>(),
      networkInfo: sL.get<NetworkInfoImpl>(),
    ),
  );
  sL.registerSingleton<ProfileRemoteDataSourceImpl>(
    ProfileRemoteDataSourceImpl(
      apiService: ApiService(),
    ),
  );
  sL.registerSingleton<ProfileRepositoryImpl>(
    ProfileRepositoryImpl(
      profileLocalDataSource: ProfileLocalDataSourceImpl(),
      profileRemoteDataSource: sL.get<ProfileRemoteDataSourceImpl>(),
    ),
  );
}
