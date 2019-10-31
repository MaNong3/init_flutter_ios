import 'package:dio/dio.dart';

getApi() async {
  await Dio().get('https://jsonplaceholder.typicode.com/photos');
}
