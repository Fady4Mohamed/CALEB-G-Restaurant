import 'package:caleb_g/app/Home/presntation/HomeView.dart';
import 'package:caleb_g/app/auth/presntation/RigsterView.dart';
import 'package:caleb_g/app/auth/presntation/loginView.dart';
import 'package:caleb_g/app/auth/presntation/splashView.dart';
import 'package:go_router/go_router.dart';
abstract class AppRouter {
  static const ksplashView = '/splashView';
  static const kloginView = '/loginView';
  static const kRigsterView = '/Rigster';
  static const kHomeView = '/HomeView';
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
      GoRoute(
        path: kRigsterView,
        builder: (context, state) => const rigster(),
      ),
     GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      
    ],
  );
}