import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:logger/logger.dart';
import 'package:retrofit/retrofit.dart';
import '../model/actor_news.dart';
part 'define_api.g.dart';

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  @GET('/actors/get-bio')
  Future<dynamic> getActorsBio(@Query('nconst') String nconst);

  @POST('/detect')
  @FormUrlEncoded()
  Future<dynamic> detectLang(@Field() String q);

  @POST("")
  @FormUrlEncoded()
  Future<dynamic> translateText(@Field() String q, @Field() String target,[@Field() String? format, @Field() String? source, @Field() String? model]);

  @GET("/actors/get-all-news")
  Future<ActorNews> getActorNews(@Query("nconst") String nconst);

}