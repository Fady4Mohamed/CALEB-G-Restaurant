import 'dart:ui';

import 'package:caleb_g/app/features/auth/data/mange/loginWithGooglecubit/login_with_google_cubit.dart';
import 'package:caleb_g/app/features/auth/data/mange/logincubit/logincubit_cubit.dart';
import 'package:caleb_g/app/features/auth/presentation/widgets/LoginListener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class logincontaner extends StatelessWidget {
  const logincontaner({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => logincubitCubit(),
        ),
        BlocProvider(
          create: (context) => LoginWithGoogleCubit(),
        ),
      ],
      child: Center(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 7,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 30, sigmaX: 30),
                  child: SizedBox(
                    width: size.width * .9,
                    child: LoginListener(size: size),
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
