import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jobseque/core/routing/routes.gr.dart';
import '../widgets/splash_screen_body.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigationControl() {
    Future.delayed(
      const Duration(seconds: 5),
      () {
        AutoRouter.of(context).pushAndPopUntil(
          const OnboardingRoute(),
          predicate: (route) => false,
        );
      },
    );
  }

  @override
  void initState() {
    navigationControl();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: SplashScreenBody(),
      ),
    );
  }
}
