import 'package:caleb_g/auth/presntation/loginView.dart';
import 'package:caleb_g/auth/presntation/splashView.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {
  static const ksplashView = '/splashView';
  static const kloginView = '/loginView';

  static final router = GoRouter(
    initialLocation: ksplashView,
    routes: [
      GoRoute(
        path: ksplashView,
      builder: (context, state) => const splashView(),
      ),
      GoRoute(
        path: kloginView,
        builder: (context, state) => const loginView(),
      ),
     
      
    ],
  );
}