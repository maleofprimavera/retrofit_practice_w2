// To parse this JSON data, do
//
//     final actorNews = actorNewsFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'actor_news.freezed.dart';
part 'actor_news.g.dart';

ActorNews actorNewsFromJson(String str) => ActorNews.fromJson(json.decode(str));

String actorNewsToJson(ActorNews data) => json.encode(data.toJson());

@freezed
class ActorNews with _$ActorNews {
  const factory ActorNews({
    String? type,
    List<Item>? items,
    String? label,
    List<String>? akas,
    String? id,
    Image? image,
    String? legacyNameText,
    String? name,
    String? paginationKey,
  }) = _ActorNews;

  factory ActorNews.fromJson(Map<String, dynamic> json) => _$ActorNewsFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    int? height,
    String? id,
    String? url,
    int? width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    String? body,
    String? head,
    String? id,
    Image? image,
    String? link,
    DateTime? publishDateTime,
    Source? source,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Source with _$Source {
  const factory Source({
    String? id,
    String? label,
    String? link,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
