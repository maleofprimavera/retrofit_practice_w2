
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'dart:convert';
import '../api/define_api.dart';
import '../model/actor_news.dart';
Future<ActorNews> getActorNewsFuture(String nconst) async{
  Logger logger  = Logger();
  final dioActorNews = Dio();
  dioActorNews.options.baseUrl = "https://imdb8.p.rapidapi.com";
  dioActorNews.options.headers ={
    'X-RapidAPI-Key': 'fd2324e964msha619da7dcfda79bp181aaajsn77d0634c0a94',
    'X-RapidAPI-Host': 'imdb8.p.rapidapi.com'
  };
  final clientActorNews = RestClient(dioActorNews);
  print(await clientActorNews.getActorNews(nconst));
  return await clientActorNews.getActorNews(nconst);
  //     .catchError((obj) {
  //   switch (obj.runtimeType) {
  //     case DioError:
  //       final res = (obj as DioError).response;
  //       logger.e('Got error : ${res?.statusCode} -> ${res?.statusMessage}');
  //       break;
  //     default:
  //       break;
  //   }
  // });
}
