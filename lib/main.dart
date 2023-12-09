
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:caleb_g/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
 await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);  Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF2F2F2)
      ),
    routerConfig: AppRouter.router,
  
    );
  }
}
