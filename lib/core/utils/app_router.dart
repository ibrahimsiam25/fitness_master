import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/splash/presention/views/splash_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/planning_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/on_boarding_view.dart';
import 'package:fitness_master/features/on_boarding/presention/manger/planning/planning_cubit.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoardingView';
  static const kPlanningView = '/planningView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: kPlanningView,
        builder: (context, state) => BlocProvider(
          create: (context) => PlanningCubit(),
          child: const PlanningView(),
        ),
      ),
    ],
  );
}
