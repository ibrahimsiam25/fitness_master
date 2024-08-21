import 'package:fitness_master/features/exercises/presentation/views/exercise_details_view.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercises_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presention/views/splash_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/planning_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/on_boarding_view.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoardingView';
  static const kPlanningView = '/planningView';
  static const kExercisesView = '/exercisesView';
  static const kExercisesDetails = '/exercisesDetails';
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
