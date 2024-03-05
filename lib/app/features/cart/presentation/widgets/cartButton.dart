import 'package:caleb_g/app/core/Styles/App_Colors.dart';
import 'package:caleb_g/app/core/strip%20payment/data/models/PaymentIntentInputModel.dart';
import 'package:caleb_g/app/core/strip%20payment/manager/cubit/payment_cubit.dart';
import 'package:caleb_g/app/core/widgets/customeButton.dart';
import 'package:caleb_g/app/features/cart/data/manager/cubit/add_to_cart_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class cartButton extends StatefulWidget {
  const cartButton({super.key, required this.size});
  final Size size;
  @override
  State<cartButton> createState() => _cartButtonState();
}

class _cartButtonState extends State<cartButton> {
  Color buttoncolor = AppColors.kMainColor;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddToCartCubit, AddToCartState>(
      listener: (context, state) async {
        if (state is AddToCartloding) {
          buttoncolor = Colors.amber;
          setState(() {});
        }
        if (state is AddToCartfailure) {
          Fluttertoast.showToast(
              msg: state.error,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
          buttoncolor = const Color.fromARGB(255, 95, 10, 4);
          setState(() {});
          await Future.delayed(Duration(seconds: 2));
          buttoncolor = AppColors.kMainColor;
          setState(() {});
        }
        if (state is AddToCartsuccess) {
          buttoncolor = Colors.green;
          setState(() {});
          await Future.delayed(Duration(seconds: 1));
          buttoncolor = AppColors.kMainColor;
          setState(() {});
        }
      },
      child: BlocListener<PaymentCubit, PaymentState>(
        listener: (context, state)async {
          if (state is Paymentloding) {
            Fluttertoast.showToast(
              msg: 'The payment was in Initialisation',
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.amber,
              textColor: Colors.black,
              fontSize: 16.0);
        }
        if (state is Paymentfailure) {
          Fluttertoast.showToast(
              msg: state.error,
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.red,
              textColor: Colors.white,
              fontSize: 16.0);
        }
        },
        child: CustomeButton(
          size: widget.size,
          onPressed: () async {
           await BlocProvider.of<PaymentCubit>(context).makepayment(paymentIntentInputModel: PaymentIntentInputModel(amount: '1000', currency: 'USD'));
          },
          titel: 'compet order',
          color: buttoncolor,
        ),
      ),
    );
  }
}
