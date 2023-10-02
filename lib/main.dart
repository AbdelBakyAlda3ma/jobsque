import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:jobseque/core/utils/global/app_colors.dart';
import 'package:jobseque/core/utils/service_locator.dart';
import 'package:jobseque/features/jobs/presentation/manager/blocs/bloc/job_bloc.dart';
import 'package:jobseque/features/profile/presentation/manager/blocs/profile_block.dart/profile_bloc.dart';
import 'core/utils/constances.dart';
import 'core/utils/simple_bloc_observer.dart';
import 'core/utils/user_data_using_shared_preferences.dart';
import 'test_page.dart';
import 'features/profile/domain/entities/education_entity.dart';
import 'features/profile/domain/entities/experience_entity.dart';
import 'features/profile/domain/entities/portfolio_entity.dart';
import 'features/profile/domain/entities/profile_entity.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await JobsqueSharedPrefrences.init();
  await Hive.initFlutter();
  await Hive.openBox<ProfileEntity>(kProfileBox);
  await Hive.openBox<PortfolioEntity>(kPortfolioBox);
  Hive.registerAdapter(EducationEntityAdapter());
  Hive.registerAdapter(ExperienceEntityAdapter());
  Hive.registerAdapter(ProfileEntityAdapter());
  Hive.registerAdapter(PortfolioEntityAdapter());

  Bloc.observer = SimpleBlocObserver();
  setUpServiceLocator();
  runApp(const Jobsque());
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class Jobsque extends StatelessWidget {
  const Jobsque({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProfileBloc>(
          create: (context) => ProfileBloc(),
        ),
        BlocProvider<JobBloc>(
          create: (context) => sL.get<JobBloc>()
            ..add(
              GetAllJobsEvent(),
            ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary[500]!),
          useMaterial3: true,
        ),
        home: const TestPage(),
      ),
    );
  }
}
