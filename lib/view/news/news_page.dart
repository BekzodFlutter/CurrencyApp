import 'package:flutter/material.dart';
import 'package:networkapp/core/extensions/find_palindrom_extension.dart';
import 'package:networkapp/core/widgets/edu_on_error_widget.dart';
import 'package:networkapp/core/widgets/edu_on_loading_widget.dart';
import 'package:networkapp/data/models/get_news_model.dart';
import 'package:networkapp/provider/news/news_provider.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NewsProvider(),
        builder: (context, child) => _scaffold(context));
  }

  Scaffold _scaffold(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("News page")),
      body: Builder(builder: (context) {
        if (context.watch<NewsProvider>().isLoading) {
          return const Center(child: EduOnLoadingWidget());
        } else if (context.watch<NewsProvider>().error.isNotEmpty) {
          return Center(
            child: EduOnErrorWidget(
                errorMessage: context.watch<NewsProvider>().error),
          );
        } else {
          List<NewsData?> data = context.watch<NewsProvider>().data!.data!;

          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(data[index]!.img.toString())),
                title: Text(
                    data[index]!.title.toString().findPalindrom().toString()),
                subtitle: Text(data[index]!.subtitle.toString()),
              );
            },
            itemCount: data.length,
          );
        }
      }),
    );
  }
}
