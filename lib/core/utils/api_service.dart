// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

class ApiService {
  final beseUrl = 'https://www.googleapis.com/books/v1/volumes';

  final Dio dio;
  ApiService(
    this.dio,
  );

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio.get('$beseUrl$endPoint');
    return response.data;
  }
}
