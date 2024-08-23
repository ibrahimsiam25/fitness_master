import 'package:go_router/go_router.dart';
import '../../features/progress/presentation/views/new_progrees_view.dart';
import 'package:fitness_master/features/home/presentation/views/home_view.dart';
import 'package:fitness_master/features/splash/presention/views/splash_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/planning_view.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercises_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/on_boarding_view.dart';
import 'package:fitness_master/features/home/presentation/views/widgets/bottom_nav_bar.dart';
import 'package:fitness_master/features/exercises/presentation/views/exercise_details_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/limited_functionality_view.dart';
import 'package:fitness_master/features/water_and_calories/presention/views/water_and_calories_view.dart';


abstract class AppRouter {
  static const kOnBoardingView = '/onBoardingView';
  static const kPlanningView = '/planningView';
  static const kLimitedFunctionality = '/limitedFunctionality';
  static const kHomeView = '/homeView';
  static const kExercisesView = '/exercisesView';
  static const kExercisesDetails = '/exercisesDetails';
  static const kWaterAndCalories = '/waterAndCalories';
  static const kNewProgrees = '/newProgrees';
  static const kSettings = '/settings';
  static const kBottomNavigationBar = '/bottomNavigationBar';
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
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kExercisesView,
        builder: (context, state) => const ExercisesView(),
      ),
      GoRoute(
        path: kExercisesDetails,
        builder: (context, state) => const ExerciseDetailsView(),
      ),
          GoRoute(
        path: kNewProgrees,
        builder: (context, state) => const NewProgreesView(),
      ),
      GoRoute(
          path: kWaterAndCalories,
          builder: (context, state) => const WaterAndCaloriesView()),
      GoRoute(
        path: kBottomNavigationBar,
        builder: (context, state) => const BottomNavigationBarController(),
      ),
    ],
  );
}
