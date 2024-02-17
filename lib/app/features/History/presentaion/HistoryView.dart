import 'package:caleb_g/app/features/History/data/manger/cubit/order_histroy_cubit.dart';
import 'package:caleb_g/app/features/History/presentaion/widgets/HistoryAppBar.dart';
import 'package:caleb_g/app/features/History/presentaion/widgets/HistoryBoody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => OrderHistroyCubit(),
      child: Scaffold(
        body: Column(
          children: [
            HistoryAppBar(size: size),
            Expanded(child: HistoryBoody( size: size)),
          ],
        ),
      ),
    );
  }
}
