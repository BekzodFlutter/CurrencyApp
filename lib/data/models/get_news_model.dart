class NewsModel {
  bool? status;
  List<NewsData>? data;
  String? message;

  NewsModel({this.status, this.data, this.message});

  NewsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <NewsData>[];
      json['data'].forEach((v) {
        data!.add(NewsData.fromJson(v));
      });
    }
    message = json['message'];
  }
}

class NewsData {
  Details? details;
  String? sId;
  String? title;
  String? subtitle;
  String? img;
  bool? isLiked;
  String? createdAt;
  int? iV;

  NewsData(
      {this.details,
      this.sId,
      this.title,
      this.subtitle,
      this.img,
      this.isLiked,
      this.createdAt,
      this.iV});

  NewsData.fromJson(Map<String, dynamic> json) {
    details =
        json['details'] != null ? Details.fromJson(json['details']) : null;
    sId = json['_id'];
    title = json['title'];
    subtitle = json['subtitle'];
    img = json['img'];
    isLiked = json['is_liked'];
    createdAt = json['created_at'];
    iV = json['__v'];
  }
}

class Details {
  int? views;
  int? likes;

  Details({this.views, this.likes});

  Details.fromJson(Map<String, dynamic> json) {
    views = json['views'];
    likes = json['likes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['views'] = views;
    data['likes'] = likes;
    return data;
  }
}
