import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:jobseque/features/jobs/data/data_sources/remote_data_source/job_remote_data_source.dart';
import 'package:jobseque/features/jobs/data/repositories/job_repository_impl.dart';
import 'package:jobseque/features/jobs/domain/use_cases/filter_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/get_all_jobs_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/search_jobs_use_case.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/bloc/job_bloc.dart';

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
      getCurrenUserUseCase: GetCurrenUserUseCase(
        authRepository: sL.get<AuthRepositoryImpl>(),
      ),
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
}
