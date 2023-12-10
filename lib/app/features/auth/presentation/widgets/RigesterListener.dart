
import 'package:caleb_g/app/core/app_routers.dart';
import 'package:caleb_g/app/features/auth/data/mange/registercubit/register_cubit.dart';
import 'package:caleb_g/app/features/auth/presentation/widgets/RigsterContant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RigesterListener extends StatefulWidget {
  const RigesterListener({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  State<RigesterListener> createState() => _RigesterListenerState();
}

class _RigesterListenerState extends State<RigesterListener> {
   String? email;
   String? password;
  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listener: (context, state) {
        
    if(state is Registersuccess){
       GoRouter.of(context).push(AppRouter.kHomeView);
    }
    if(state is Registerfailure){
      print(state.error.toString());
    }
    if(state is Registerloding){
      print('loding');
    }
      },
      child: RigsterContant(size: widget.size,
      
      onchangedemali: (value){
        email=value;
      },
      onchangedpassword: (value){
        password=value;
      },
      onTap: (){ 
        if(email!=null&&password!=null){
        BlocProvider.of<RegisterCubit>(context).register(lemail: email!, lpassword: password!);
        }
      },
      ),
    );
  }
}
