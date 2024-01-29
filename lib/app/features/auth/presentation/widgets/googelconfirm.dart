import 'package:caleb_g/app/core/app_routers.dart';
import 'package:caleb_g/app/features/auth/data/mange/loginWithGooglecubit/login_with_google_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class googelconfirm extends StatelessWidget {
  const googelconfirm({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () async {
        print('object');
        BlocProvider.of<LoginWithGoogleCubit>(context).signInWithGoogle();
      },
      child: BlocListener<LoginWithGoogleCubit, LoginWithGoogleState>(
        listener: (context, state) {
          if (state is LoginWithGooglesuccess) {
            GoRouter.of(context).push(AppRouter.kHomeView);
          }
          if (state is LoginWithGooglefailure) {
            print(state.error.toString());
          }
          if (state is LoginWithGoogleloding) {
            print('loding');
          }
        },
        child: Container(
          height: size.height / 9,
          width: size.height / 7,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Image.asset('assats/image/google-logo-9808.png',
              height: size.height / 9 - 16),
        ),
      ),
    );
  }
}
