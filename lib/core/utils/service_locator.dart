import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:jobseque/features/apply_job/data/data_sources/apply_job_local_data_source.dart';
import 'package:jobseque/features/apply_job/data/data_sources/apply_job_remote_data_source.dart';
import 'package:jobseque/features/apply_job/data/repo/apply_job_repo_impl.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/add_active_application_use_case.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/apply_job_use_case.dart';
import 'package:jobseque/features/apply_job/domain/use_cases/get_active_applied_jobs_use_case.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/add_active_application_bloc/add_active_application_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/apply_job_bloc/apply_job_bloc.dart';
import 'package:jobseque/features/apply_job/presentation/manager/blocs/get_active_applied_jobs_bloc/get_active_applied_jobs_bloc.dart';
import 'package:jobseque/features/education/data/data_sources/education_remote_data_source.dart';
import 'package:jobseque/features/education/data/repos/education_repo_impl.dart';
import 'package:jobseque/features/education/domain/use_cases/add_education_use_case.dart';
import 'package:jobseque/features/education/presentation/manager/add_education_bloc/add_education_bloc.dart';
import 'package:jobseque/features/experience/data/data_sources/experience_remote_data_source.dart';
import 'package:jobseque/features/experience/data/repos/experience_repo_impl.dart';
import 'package:jobseque/features/experience/domain/use_cases/add_experience_use_case.dart';
import 'package:jobseque/features/experience/presentation/manager/add_experience_bloc/add_experience_bloc.dart';
import 'package:jobseque/features/favorites/data/data_source/favorite_local_data_source.dart';
import 'package:jobseque/features/favorites/data/repo/favorites_repo_impl.dart';
import 'package:jobseque/features/favorites/domain/use_cases/add_favorite_use_case.dart';
import 'package:jobseque/features/favorites/domain/use_cases/delete_favorite_use_case.dart';
import 'package:jobseque/features/favorites/domain/use_cases/get_favorite_jobs_use_case.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/favorite_operation_bloc/favorite_operation_bloc.dart';
import 'package:jobseque/features/favorites/presentation/manager/blocs/get_favorite_jobs_bloc/get_favorite_jobs_bloc.dart';
import 'package:jobseque/features/jobs/domain/use_cases/add_submitted_job_use_case.dart';
import 'package:jobseque/features/jobs/domain/use_cases/show_submitted_jobs.dart';
import 'package:jobseque/features/jobs/presentation/manager/add_submitted_job_bloc/add_submitted_job_bloc.dart';
import 'package:jobseque/features/jobs/presentation/manager/show_submitted_jobs_bloc/show_submitted_jobs_bloc.dart';
import 'package:jobseque/features/portfolio/data/data_sources/portfolio_local_data_source.dart';
import 'package:jobseque/features/portfolio/data/data_sources/portfolio_remote_data_source.dart';
import 'package:jobseque/features/portfolio/data/repos/portfolio_repo_impl.dart';
import 'package:jobseque/features/portfolio/domain/use_cases/add_portfolio_use_case.dart';
import 'package:jobseque/features/portfolio/domain/use_cases/delete_portfolio_use_case.dart';
import 'package:jobseque/features/portfolio/domain/use_cases/get_portfolios_use_case.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/get_portfolios_bloc/get_portfolios_bloc.dart';
import 'package:jobseque/features/portfolio/presentation/manager/blocs/portfolio_operation_bloc/portfolio_operation_bloc.dart';
import 'package:jobseque/features/profile/data/data_sources/profile_local_data_source.dart';
import 'package:jobseque/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:jobseque/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:jobseque/features/profile/domain/use_cases/add_personal_details_use_case.dart';
import 'package:jobseque/features/profile/domain/use_cases/change_profile_image_use_case.dart';
import 'package:jobseque/features/profile/domain/use_cases/complete_profile_use_case.dart';
import 'package:jobseque/features/profile/domain/use_cases/get_profile_image_use_case.dart';
import 'package:jobseque/features/profile/domain/use_cases/get_profile_use_case.dart';
import 'package:jobseque/features/profile/domain/use_cases/work_prefrences_use_case.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/add_personal_details_bloc/add_personal_details_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/change_profile_image_bloc/change_profile_image_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_bloc/get_profile_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_image_bloc/get_profile_image_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/work_perfrences_bloc/work_prefrences_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/cubits/complete_profile_cubit/complete_profile_cubit.dart';
import '../../features/auth/data/data_sources/auth_local_data_source.dart';
import '../../features/auth/data/data_sources/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/use_cases/get_curren_user_use_case.dart';
import '../../features/auth/presentation/manager/blocs/get_current_user_bloc/get_current_user_bloc.dart';
import '../../features/jobs/data/data_sources/job_local_data_source.dart';
import '../../features/jobs/data/data_sources/job_remote_data_source.dart';
import '../../features/jobs/data/repositories/job_repository_impl.dart';
import '../../features/jobs/domain/use_cases/filter_jobs_use_case.dart';
import '../../features/jobs/domain/use_cases/get_all_jobs_use_case.dart';
import '../../features/jobs/domain/use_cases/search_jobs_use_case.dart';
import '../../features/jobs/presentation/manager/blocs/Job_bloc/job_bloc.dart';
import '../../features/jobs/presentation/manager/blocs/search_bloc/search_bloc.dart';
import '../network/network_info.dart';
import 'api_services.dart';

final sL = GetIt.instance;

void setUpServiceLocator() {
  sL.registerSingleton<ApiService>(ApiService());
  sL.registerSingleton<FavoritesRepoImpl>(
    FavoritesRepoImpl(
      favoriteLocalDataSource: FavoriteLocalDataSourceImpl(),
    ),
  );
  sL.registerSingleton<ApplyJobRepoImpl>(
    ApplyJobRepoImpl(
      applyJobLocalDataSource: ApplyJobLocalDataSourceImpl(),
      applyJobRemoteDataSource: ApplyJobRemoteDataSourceImpl(
        apiService: sL.get<ApiService>(),
      ),
    ),
  );
  sL.registerSingleton<PortfolioRepoImpl>(
    PortfolioRepoImpl(
      portfolioLocalDataSource: PortfolioLocalDataSourceImpl(),
      portfolioRemoteDataSource: PortfolioRemoteDataSourceImpl(
        apiService: sL.get<ApiService>(),
      ),
    ),
  );

  sL.registerSingleton<ExperienceRemoteDataSourceImpl>(
    ExperienceRemoteDataSourceImpl(
      apiService: sL.get<ApiService>(),
    ),
  );
  sL.registerSingleton<EducationRemoteDataSourceImpl>(
    EducationRemoteDataSourceImpl(
      apiService: sL.get<ApiService>(),
    ),
  );
  sL.registerSingleton<EducationRepoImpl>(
    EducationRepoImpl(
      educationRemoteDataSource: sL.get<EducationRemoteDataSourceImpl>(),
    ),
  );
  sL.registerSingleton<ExperienceRepoImpl>(
    ExperienceRepoImpl(
      experienceRemoteDataSource: sL.get<ExperienceRemoteDataSourceImpl>(),
    ),
  );
  sL.registerSingleton<JobRemoteDataSourceImpl>(
    JobRemoteDataSourceImpl(
      apiService: sL.get<ApiService>(),
    ),
  );

  sL.registerSingleton<AuthRemoteDataSourceImpl>(
    AuthRemoteDataSourceImpl(
      apiService: sL.get<ApiService>(),
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
      jobLocalDataSource: JobLocalDataSourceImpl(),
      jobRemoteDataSource: sL.get<JobRemoteDataSourceImpl>(),
      networkInfo: sL.get<NetworkInfoImpl>(),
    ),
  );
  sL.registerSingleton<ProfileRemoteDataSourceImpl>(
    ProfileRemoteDataSourceImpl(
      apiService: sL.get<ApiService>(),
    ),
  );

  sL.registerSingleton<ProfileRepositoryImpl>(
    ProfileRepositoryImpl(
      profileLocalDataSource: ProfileLocalDataSourceImpl(),
      profileRemoteDataSource: sL.get<ProfileRemoteDataSourceImpl>(),
    ),
  );
  sL.registerFactory<GetCurrentUserBloc>(
    () => GetCurrentUserBloc(
      getCurrenUserUseCase:
          GetCurrenUserUseCase(authRepository: sL.get<AuthRepositoryImpl>()),
    ),
  );
  sL.registerFactory<GetProfileImageBloc>(
    () => GetProfileImageBloc(
      getProfileImageUseCase: GetProfileImageUseCase(
        profileRepository: sL.get<ProfileRepositoryImpl>(),
      ),
    ),
  );
  sL.registerFactory<ShowSubmittedJobsBloc>(
    () => ShowSubmittedJobsBloc(
      showSubmittedJobsUseCase: ShowSubmittedJobsUseCase(
        jobRepository: sL.get<JobRepositoryImpl>(),
      ),
    ),
  );
  sL.registerFactory<AddSubmittedJobBloc>(
    () => AddSubmittedJobBloc(
      addSubmittedJobUseCase: AddSubmittedJobUseCase(
        jobRepository: sL.get<JobRepositoryImpl>(),
      ),
    ),
  );
  sL.registerFactory<JobBloc>(
    () => JobBloc(
      getAllJobsUseCase: GetAllJobsUseCase(
        jobRepo: sL.get<JobRepositoryImpl>(),
      ),
    ),
  );

  sL.registerFactory<SearchBloc>(
    () => SearchBloc(
      searchJobsUseCase:
          SearchJobsUseCase(jobRepo: sL.get<JobRepositoryImpl>()),
      filterJobsUseCase:
          FilterJobsUseCase(jobRepo: sL.get<JobRepositoryImpl>()),
    ),
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
  sL.registerFactory<AddEducationBloc>(
    () => AddEducationBloc(
      addEducationUseCase: AddEducationUseCase(
        educationRepo: sL.get<EducationRepoImpl>(),
      ),
    ),
  );
  sL.registerFactory<AddExperienceBloc>(
    () => AddExperienceBloc(
      addExperienceUseCase: AddExperienceUseCase(
        experienceRepo: sL.get<ExperienceRepoImpl>(),
      ),
    ),
  );
  sL.registerFactory<AddPersonalDetailsBloc>(
    () => AddPersonalDetailsBloc(
      addPersonalDetailsUseCase: AddPersonalDetailsUseCase(
        profileRepository: sL.get<ProfileRepositoryImpl>(),
      ),
    ),
  );
  sL.registerFactory<PortfolioOperationBloc>(
    () => PortfolioOperationBloc(
      addPortfolioUseCase: AddPortfolioUseCase(
        portfolioRepo: sL.get<PortfolioRepoImpl>(),
      ),
      deletePortfolioUseCase: DeletePortfolioUseCase(
        portfolioRepo: sL.get<PortfolioRepoImpl>(),
      ),
    ),
  );
  sL.registerFactory<GetPortfoliosBloc>(
    () => GetPortfoliosBloc(
      getPortfoliosUseCase: GetPortfoliosUseCase(
        portfolioRepo: sL.get<PortfolioRepoImpl>(),
      ),
    ),
  );

  sL.registerFactory<CompleteProfileCubit>(
    () => CompleteProfileCubit(
      completeProfileUseCase: CompleteProfileUseCase(
        profileRepository: sL.get<ProfileRepositoryImpl>(),
      ),
    ),
  );
  sL.registerFactory<ChangeProfileImageBloc>(
    () => ChangeProfileImageBloc(
      changeProfileImageUseCase: ChangeProfileImageUseCase(
        profileRepository: sL.get<ProfileRepositoryImpl>(),
      ),
    ),
  );
  sL.registerFactory<AddActiveApplicationBloc>(
    () => AddActiveApplicationBloc(
      activeApplicationUseCase: AddActiveApplicationUseCase(
        applyJobRepo: sL.get<ApplyJobRepoImpl>(),
      ),
    ),
  );
  sL.registerFactory<GetActiveAppliedJobsBloc>(
    () => GetActiveAppliedJobsBloc(
      getActiveAppliedJobsUseCase: GetActiveAppliedJobsUseCase(
        applyJobRepo: sL.get<ApplyJobRepoImpl>(),
      ),
    ),
  );
  sL.registerFactory<ApplyJobBloc>(
    () => ApplyJobBloc(
      applyJobUseCase: ApplyJobUseCase(
        applyJobRepo: sL.get<ApplyJobRepoImpl>(),
      ),
    ),
  );

  sL.registerFactory<FavoriteOperationBloc>(
    () => FavoriteOperationBloc(
      deleteFavoriteUseCase: DeleteFavoriteUseCase(
        favoritesRepo: sL.get<FavoritesRepoImpl>(),
      ),
      addFavoriteUseCase: AddFavoriteUseCase(
        favoritesRepo: sL.get<FavoritesRepoImpl>(),
      ),
    ),
  );

  sL.registerFactory<GetFavoriteJobsBloc>(
    () => GetFavoriteJobsBloc(
      getFavoriteJobsUseCase: GetFavoriteJobsUseCase(
        favoritesRepo: sL.get<FavoritesRepoImpl>(),
      ),
    ),
  );
}
