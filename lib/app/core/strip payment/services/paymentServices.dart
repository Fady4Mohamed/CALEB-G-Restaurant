import 'package:caleb_g/app/core/strip%20payment/models/PaymentIntentInputModel.dart';
import 'package:caleb_g/app/core/strip%20payment/models/payment_intent_model/payment_intent_model.dart';
import 'package:caleb_g/app/core/strip%20payment/services/APIservices.dart';
import 'package:caleb_g/app/core/strip%20payment/services/secretkeys.dart';

class PaymentServices {
  final Apiservices apiservices = Apiservices();
  Future<PaymentIntentModel> createpaymentIntent({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    var Response = await apiservices.Post(
        body: paymentIntentInputModel.tojson(),
        url: 'https://api.stripe.com/v1/payment_intents',
        token: secrekeys.secrtekey);
        PaymentIntentModel paymentceated=PaymentIntentModel.fromJson(Response.data);
        return paymentceated;
  }
}
