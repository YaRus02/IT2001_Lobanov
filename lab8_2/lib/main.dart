import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart' as intl;

Future<List<News>> fetchNews(http.Client client) async {
  final response = await client.get(Uri.parse(
      'https://kubsau.ru/api/getNews.php?key=6df2f5d38d4e16b5a923a6d4873e2ee295d0ac90'));
  return compute(parseNews, response.body);
}

List<News> parseNews(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<News>((json) => News.fromJson(json)).toList();
}

class News {
  final int id;
  final String active_from;
  final String title;
  final String preview_text;
  final String preview_picture_src;

  const News({
    required this.id,
    required this.active_from,
    required this.title,
    required this.preview_text,
    required this.preview_picture_src,
  });

  factory News.fromJson(Map<String, dynamic> json) {
    return News(
      id: int.parse(json['ID']) ,
      active_from: json['ACTIVE_FROM'] as String,
      title: json['TITLE'] as String,
      preview_text: json['PREVIEW_TEXT'] as String,
      preview_picture_src: json['PREVIEW_PICTURE_SRC'] as String,
    );
  }
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Новостная лента КубГАУ';

    return  MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<News>>(
        future: fetchNews(http.Client()),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('Ошибка запроса!'),
            );
          } else if (snapshot.hasData) {
            return NewsList(news: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class NewsList extends StatelessWidget {
  const NewsList({Key? key, required this.news}) : super(key: key);
  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(5),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisSpacing: 5,
      ),
      itemCount: news.length,
      itemBuilder: (context, index) {
        return Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Image.network(news[index].preview_picture_src),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 15,),
                    Text(news[index].active_from),
                    SizedBox(height: 5,),
                    Text(news[index].title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                  ],
                ),
                SizedBox(height: 10,),
                Expanded(child: Text(intl.Bidi.stripHtmlIfNeeded(news[index].preview_text)), ),
              ],
            ),
        );
      },
    );
  }
}

