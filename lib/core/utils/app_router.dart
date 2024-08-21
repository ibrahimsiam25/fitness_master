import 'package:fitness_master/features/on_boarding/presention/views/limited_functionality_view.dart';
import 'package:go_router/go_router.dart';
import '../../features/splash/presention/views/splash_view.dart';
import 'package:fitness_master/features/on_boarding/presention/views/on_boarding_view.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoardingView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LimitedFunctionalityView(),
      ),
      GoRoute(
        path: kOnBoardingView,
        builder: (context, state) => const OnBoardingView(),
      ),
    ],
  );
}
