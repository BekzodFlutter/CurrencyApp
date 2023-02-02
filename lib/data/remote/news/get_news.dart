import 'package:dio/dio.dart';
import 'package:networkapp/core/config/dio_catch_config.dart';
import 'package:networkapp/core/config/dio_config.dart';
import 'package:networkapp/core/constants/urls/total_end_points.dart';
import 'package:networkapp/data/models/get_news_model.dart';

class GetNewsService {
  Future getNews() async {
    try {
      Response response =
          await DioConfig.createRequest().get(EduOnTotalEndPoints.getNews);
      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return DioHandleCatchError.handlerCatchError(e);
    }
  }
}
