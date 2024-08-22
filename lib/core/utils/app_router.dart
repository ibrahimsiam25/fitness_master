import 'package:fitness_master/features/settings/presentation/views/settings_view.dart';
import 'package:go_router/go_router.dart';
import 'package:fitness_master/features/splash/presention/views/splash_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/planning_view.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercises_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/on_boarding_view.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercise_details_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/limited_functionality_view.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoardingView';
  static const kPlanningView = '/planningView';
  static const kLimitedFunctionality = '/limitedFunctionality';
  static const kExercisesView = '/exercisesView';
  static const kExercisesDetails = '/exercisesDetails';
  static const kSettings = '/settings';
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
        builder: (context, state) => const PlanningView(),
      ),
      GoRoute(
        path: kLimitedFunctionality,
        builder: (context, state) => const LimitedFunctionalityView(),
      ),
      GoRoute(
        path: kExercisesView,
        builder: (context, state) => const ExercisesView(),
      ),
      GoRoute(
        path: kExercisesDetails,
        builder: (context, state) => const ExerciseDetailsView(),
      ),
    ],
  );
}
