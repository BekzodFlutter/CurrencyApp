
import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:networkapp/provider/news/news_provider.dart';
import 'package:networkapp/view/news/news_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      saveLocale: true,
      startLocale: const Locale('ru'),
      supportedLocales: const [Locale('uz'), Locale('en'), Locale('ru')],
      path: "lib/core/lang",
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => NewsProvider())
        ],
        child: const MyApp(),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NewsPage(),
    );
  }
}
