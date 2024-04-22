import 'package:caleb_g/app/core/strip%20payment/data/models/PaymentIntentInputModel.dart';
import 'package:caleb_g/app/core/strip%20payment/data/models/payment_intent_model/payment_intent_model.dart';
import 'package:caleb_g/app/core/strip%20payment/data/services/APIservices.dart';
import 'package:caleb_g/app/core/strip%20payment/data/services/secret_keys.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentServices {
  final Apiservices apiservices = Apiservices();
  Future<PaymentIntentModel> createpaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var Response = await apiservices.Post(
        body: paymentIntentInputModel.tojson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: secrekeys.secrtekey,
        contentType: Headers.formUrlEncodedContentType);
    PaymentIntentModel paymentceated =
        PaymentIntentModel.fromJson(Response.data);
    return paymentceated;
  }

  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecre}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      // Main params
      merchantDisplayName: 'CALEB G',
      paymentIntentClientSecret: paymentIntentClientSecre,
    ));
  }

  Future<void> displaypaymentsheet() async {
    await Stripe.instance.presentPaymentSheet();
  }
  Future pay({required PaymentIntentInputModel paymentIntentInputModel})async{
    PaymentIntentModel paymentIntentModel=await createpaymentIntent(paymentIntentInputModel: paymentIntentInputModel);
    await initPaymentSheet(paymentIntentClientSecre: paymentIntentModel.clientSecret!);
    await displaypaymentsheet();
  }
}
