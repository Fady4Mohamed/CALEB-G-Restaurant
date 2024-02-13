import 'package:caleb_g/app/core/manager/models/FoodModel.dart';
import 'package:caleb_g/app/features/History/presentaion/HistoryView.dart';
import 'package:caleb_g/app/features/Home/presentation/HomeView.dart';
import 'package:caleb_g/app/features/Search/presentation/SearchView.dart';
import 'package:caleb_g/app/features/auth/presentation/RigsterView.dart';
import 'package:caleb_g/app/features/auth/presentation/loginView.dart';
import 'package:caleb_g/app/features/auth/presentation/splashView.dart';
import 'package:caleb_g/app/features/card/presentation/CartView.dart';
import 'package:caleb_g/app/features/like/presentation/LikeView.dart';
import 'package:caleb_g/app/features/product/presentation/ProductView.dart';
import 'package:caleb_g/app/features/profile/presentation/ProfileView.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AppRouter {
  static late String initializerout;
  static initializeApp() async {
    bool googleUser = await GoogleSignIn().isSignedIn();
    User? user;
    await FirebaseAuth.instance.authStateChanges().listen((event) {
      user = event;
    });
    if (user == null && googleUser ) {
      initializerout = AppRouter.ksplashView;
    } else {
      initializerout = AppRouter.kHomeView;
    }
  }

  static const ksplashView = '/splashView';
  static const kloginView = '/loginView';
  static const kRigsterView = '/Rigster';
  static const kHomeView = '/HomeView';
  static const kProductView = '/productView';
  static const kHistoryView = '/HistoryView';
  static const kSearchView = '/SearchView';
  static const kProfileView = '/ProfileVew';
  static const kCartView = '/CartVew';
  static const kLikeView = '/LikeVew';
  static var router = GoRouter(
    initialLocation: initializerout,
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
      GoRoute(
        path: kProductView,
        builder: (context, state) {
          final food = state.extra as FoodModel;
          return ProductView(food: food);
        },
      ),
      GoRoute(
        path: kHistoryView,
        builder: (context, state) => const HistoryView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kProfileView,
        builder: (context, state) => const ProfileView(),
      ),
      GoRoute(
        path: kCartView,
        builder: (context, state) => const CartView(),
      ),
      GoRoute(
        path: kLikeView,
        builder: (context, state) => const LikeView(),
      ),
    ],
  );
}
