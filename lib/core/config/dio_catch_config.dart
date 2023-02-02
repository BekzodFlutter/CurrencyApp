import 'package:dio/dio.dart';

class DioHandleCatchError {
  static String handlerCatchError(DioError e) {
    switch (e.type) {
      case DioErrorType.connectTimeout:
        return "connectTimeout";
      case DioErrorType.receiveTimeout:
        return "receiveTimeout";
      case DioErrorType.sendTimeout:
        return "sendTimeout";
      case DioErrorType.other:
        return "noConnection";
      default:
        return "smtWentWrong";
    }
  }
}
