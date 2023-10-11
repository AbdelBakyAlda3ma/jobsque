import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jobseque/core/routing/routes.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/bloc/job_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/get_profile_bloc/get_profile_bloc.dart';
import 'core/utils/constances.dart';
import 'core/utils/simple_bloc_observer.dart';
import 'core/utils/user_data_using_shared_preferences.dart';
import 'features/education/domain/entities/education_entity.dart';
import 'features/experience/domain/entities/experience_entity.dart';
import 'features/portfolio/domain/entities/portfolio_entity.dart';
import 'features/profile/domain/entities/profile_entity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await JobsqueSharedPrefrences.init();
  await Hive.initFlutter();
  Hive.registerAdapter(EducationEntityAdapter());
  Hive.registerAdapter(ExperienceEntityAdapter());
  Hive.registerAdapter(ProfileEntityAdapter());
  Hive.registerAdapter(PortfolioEntityAdapter());
  await Hive.openBox<ProfileEntity>(kProfileBox);
  await Hive.openBox<PortfolioEntity>(kPortfolioBox);

  Bloc.observer = SimpleBlocObserver();
  setUpServiceLocator();
  runApp(Jobsque());
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class Jobsque extends StatelessWidget {
  Jobsque({super.key});
  final _router = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sL.get<GetProfileBloc>(),
        ),
        BlocProvider<JobBloc>(
          create: (context) => sL.get<JobBloc>()
            ..add(
              GetAllJobsEvent(),
            ),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary[500]!),
          useMaterial3: true,
        ),
        routerDelegate: _router.delegate(),
        routeInformationParser: _router.defaultRouteParser(),
      ),
    );
  }
}
