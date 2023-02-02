import 'package:flutter/foundation.dart';
import 'package:networkapp/data/models/get_news_model.dart';
import 'package:networkapp/data/remote/news/get_news.dart';

class NewsProvider extends ChangeNotifier {
  NewsProvider() {
    getNews();
  }
// Logic...

  GetNewsService getNewsService = GetNewsService();
  bool isLoading = false;
  String error = "";
  NewsModel? data;
  void getNews() async {
    isLoading = true;
    notifyListeners();
    await getNewsService.getNews().then((dynamic response) {
      if (response is NewsModel) {
        data = response;
        isLoading = false;
        notifyListeners();
      } else {
        error = response;
        isLoading = false;
        notifyListeners();
      }
    });
  }
}
