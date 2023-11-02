
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:retrofit_practice_w2/screens/news.dart';

final logger = Logger();
void main() async {
  
  // // imdb dio client
  // final dio = Dio();
  // dio.options.headers = {
  //   'X-RapidAPI-Key': 'fd2324e964msha619da7dcfda79bp181aaajsn77d0634c0a94',
  //   'X-RapidAPI-Host': 'imdb8.p.rapidapi.com'
  // };
  // dio.options.baseUrl = "https://imdb8.p.rapidapi.com/";
  // final client = await RestClient(dio);
  // // var stringJson = client.getActorsBio().toString();
  // // var jsonObj = json.decode(stringJson);
  // // print(jsonObj.toString());
  // client.getActorsBio("nm0001667").then((it) => logger.i(it));
  // // gg trans dio client
  // var dio_translate = Dio();
  // dio_translate.options.headers = {
  //   // 'content-type': 'application/x-www-form-urlencoded',
  //   // 'Accept-Encoding': 'application/gzip',
  //   'X-RapidAPI-Key': 'fd2324e964msha619da7dcfda79bp181aaajsn77d0634c0a94',
  //   'X-RapidAPI-Host': 'google-translate1.p.rapidapi.com'
  // };
  // dio_translate.options.baseUrl =
  //     "https://google-translate1.p.rapidapi.com/language/translate/v2";
  // final client_translate = await RestClient(dio_translate);
  // client_translate.detectLang("Hello").then((it) => logger.i(it));
  //
  // var dio3 = Dio();
  // dio3.options.baseUrl =
  // "https://google-translate1.p.rapidapi.com/language/translate/v2";
  // dio3.options.headers = {
  //   'X-RapidAPI-Key': 'fd2324e964msha619da7dcfda79bp181aaajsn77d0634c0a94',
  //   'X-RapidAPI-Host': 'google-translate1.p.rapidapi.com'
  // };
  // final client_3 = await RestClient(dio3);
  // client_3
  //     .translateText("Hello, world!", "es")
  //     .then((it) => logger.i(it))
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
  
  runApp(const Home());
}
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Scaffold(
      body: ActorNewsWidget(),
    ),);
  }
}

