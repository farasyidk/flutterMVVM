import 'package:dio/dio.dart';
import 'package:mvvm_mobx/core/config/utils.dart';

Dio dio = new Dio();

class ApiClient {
  static Future getUser(String page) async {
    var response = await dio.get(Utils.getUrlApi('user')+page);
    return response.data;
  }
}