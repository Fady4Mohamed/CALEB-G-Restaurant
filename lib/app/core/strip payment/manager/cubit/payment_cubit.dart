import 'package:bloc/bloc.dart';
import 'package:caleb_g/app/core/strip%20payment/data/models/PaymentIntentInputModel.dart';
import 'package:caleb_g/app/core/strip%20payment/data/services/paymentServices.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit() : super(PaymentInitial());
  final PaymentServices paymentServices=PaymentServices();

  Future makepayment({required PaymentIntentInputModel paymentIntentInputModel})async{
    emit(Paymentloding());
   try {
  await paymentServices.pay(paymentIntentInputModel: paymentIntentInputModel);
  emit(Paymentsuccess());
} on Exception catch (e) {
  
              print(e.toString());
   emit(Paymentfailure(error: e.toString()));
}
  }
}
