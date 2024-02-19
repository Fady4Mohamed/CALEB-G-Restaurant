import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/features/History/data/manger/cubit/order_histroy_cubit.dart';
import 'package:caleb_g/app/features/History/presentaion/widgets/hasHistoryBoody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
        } else if (state is OrderHistroyfailure) {
          Fluttertoast.showToast(
              msg: state.error,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          return const SizedBox();
        } else {
          return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Transform.scale(
                scale: 0.8,
                child: const CircularProgressIndicator(
                    color: AppColors.kMainColor),
              ),
            ),
          ]);
        }
      },
    );
  }
}
