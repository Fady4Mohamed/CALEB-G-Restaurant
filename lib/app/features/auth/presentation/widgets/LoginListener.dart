
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:caleb_g/app/features/auth/data/mange/logincubit/logincubit_cubit.dart';
import 'package:caleb_g/app/features/auth/presentation/widgets/LoginContant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginListener extends StatefulWidget {
  const LoginListener({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<LoginListener> createState() => _LoginListenerState();
}

class _LoginListenerState extends State<LoginListener> {
   String? email;
   String? password;
  @override
  Widget build(BuildContext context) {
    return BlocListener<logincubitCubit, loginState>(
      listener: (context, state) {
        if(state is logincubitsuccess){
       GoRouter.of(context).push(AppRouter.kHomeView);
    }
    if(state is logincubitfailure){
      print(state.error.toString());
    }
    if(state is logincubitloding){
      print('loding');
    }
      },
      child: LoginContant(size: widget.size,
     
      onchangedemali: (value){
        email=value;
      },
      onchangedpassword: (value){
        password=value;
      },
      onTap: (){ 
        if(email!=null&&password!=null){
        BlocProvider.of<logincubitCubit>(context).login(lemail: email!, lpassword: password!);
        }
      }, ),
    );
  }
}
