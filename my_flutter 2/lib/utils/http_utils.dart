import 'package:dio/dio.dart';
import 'dart:io';

void getHttp() async {
  Dio dio = new Dio();
  Response response = await dio.get(
      'https://jsonplaceholder.typicode.com/photos',
      queryParameters: {"1": "1"},
      options: Options(headers: {HttpHeaders.acceptHeader: "*"}));
  return print(response);
}
// class Http{
//   static Dio dio;
//   /// default options
//   static const String API_PREFIX = 'https://jsonplaceholder.typicode.com/photos';
//   //方式
//   static const String GET = 'get';
//   static const String POST = 'post';
// }
