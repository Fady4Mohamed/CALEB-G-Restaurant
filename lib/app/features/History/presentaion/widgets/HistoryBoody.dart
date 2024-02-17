import 'package:caleb_g/app/features/History/data/manger/cubit/order_histroy_cubit.dart';
import 'package:caleb_g/app/features/History/presentaion/widgets/NoHistoryBoody.dart';
import 'package:caleb_g/app/features/History/presentaion/widgets/hasHistoryBoody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryBoody extends StatelessWidget {
  const HistoryBoody({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrderHistroyCubit>(context).getallfood();
    return BlocBuilder<OrderHistroyCubit, OrderHistroyState>(
      builder: (context, state) {
        if (state is OrderHistroysuccess) {
          return HasHistoryBoody(size: size);
        }
        else {
          return NoHistoryBoody(size: size);
        }
        
      },
    );
  }
}
