import 'package:dio/dio.dart';

abstract class Failures {
  final String errMessage;

  Failures(this.errMessage);
}

class SreverFailures extends Failures {
  SreverFailures(super.errMessage);
  factory SreverFailures.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return SreverFailures('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return SreverFailures('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return SreverFailures('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return SreverFailures('Bad certificate');
      case DioExceptionType.badResponse:
        return SreverFailures.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return SreverFailures('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return SreverFailures('Connection error with ApiServer');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return SreverFailures('No internet connection');
        }
        return SreverFailures('Unexpected error, please try again!');
      default:
        return SreverFailures('Something went wrong, please try again!');
    }
  }

  factory SreverFailures.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return SreverFailures(response['error']['message']);
    } else if (statusCode == 404) {
      return SreverFailures('Your request not found, please try again!');
    } else if (statusCode == 500) {
      return SreverFailures('Internal server error, please try again!');
    } else {
      return SreverFailures('Bad gateway, please try again!');
    }
  }
}
