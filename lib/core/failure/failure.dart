import 'package:dio/dio.dart';

abstract class Failure{
   final String message;

  Failure(this.message);

}

class NetworkFailure extends Failure{
  NetworkFailure(super.message);

  factory NetworkFailure.fromDioError(DioException exception) {
    switch (exception.type) {
      case DioExceptionType.connectionTimeout:
        return NetworkFailure('Connection timeout with ApiServer');

      case DioExceptionType.sendTimeout:
        return NetworkFailure('Send timeout with ApiServer');

      case DioExceptionType.receiveTimeout:
        return NetworkFailure('Receive timeout with ApiServer');

      case DioExceptionType.badResponse:
        return NetworkFailure.fromResponse(
            exception.response!.statusCode, exception.response!.data);
      case DioExceptionType.cancel:
        return NetworkFailure('Request to ApiServer was canceled');

      case DioExceptionType.badCertificate:
        if (exception.message.toString().contains('SocketException')) {
          return NetworkFailure('No Internet Connection');
        }
        return NetworkFailure('Unexpected Error, Please try again!');
      default:
        return NetworkFailure('Apps There was an Error, Please try again');
    }
  }

  factory NetworkFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return NetworkFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return NetworkFailure('Your request not found, Please try later!');
    } else if (statusCode == 500) {
      return NetworkFailure('Internal Server error, Please try later');
    } else {
      return NetworkFailure('Ops There was an Error, Please try again');
    }
  }
}