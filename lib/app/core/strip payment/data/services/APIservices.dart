import 'package:dio/dio.dart';

class Apiservices {
  final Dio dio = Dio();
  Future<Response> Post ({
    required  body,
    required String url,
    required String token,
    String? contentType,
  }) async{
   var Response=await dio.post(url,
        data: body,
        options: Options(
          contentType: contentType ,
          headers: {'Authorization': "Bearer $token"}));
  return Response;
  }
}
