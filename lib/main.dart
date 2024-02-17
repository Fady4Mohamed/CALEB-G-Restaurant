import 'package:caleb_g/app/core/app_routers.dart';
import 'package:caleb_g/app/core/manager/data/Fetch%20food%20cubit/fetch_food_cubit.dart';
import 'package:caleb_g/app/core/manager/data/user%20data%20information%20cubit/user_data_information_cubit.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:caleb_g/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await AppRouter.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchFoodCubit()..getallfood(),
        ),
        BlocProvider(
          create: (context) => UserDataInformationCubit(),
        ),
         BlocProvider(
          create: (context) => AddToCartCubit(),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(scaffoldBackgroundColor: Color(0xffF2F2F2)),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
