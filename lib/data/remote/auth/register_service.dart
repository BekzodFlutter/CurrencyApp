import 'dart:html';

import 'package:dio/dio.dart';
import 'package:networkapp/core/config/dio_catch_config.dart';
import 'package:networkapp/core/config/dio_config.dart';
import 'package:networkapp/core/constants/urls/aut_end_points.dart';

class RegisterService {
  static Future register() async {
    try {
      Response response =
          await DioConfig.createRequest().post(EduOnAuthEndPoints.register);
      if (response.statusCode == 201) {
        return "The new user created successfully!";
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return DioHandleCatchError.handlerCatchError(e);
    }
  }
}
